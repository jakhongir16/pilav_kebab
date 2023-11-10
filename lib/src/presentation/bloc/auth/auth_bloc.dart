import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:ploff_kebab/src/core/either_dart/either.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_phone_response.dart';
import 'package:ploff_kebab/src/data/models/customer/login_request.dart';
import 'package:ploff_kebab/src/data/models/customer/phone_customer_request.dart';
import 'package:ploff_kebab/src/domain/failure/failure.dart';
import 'package:ploff_kebab/src/domain/repositories/customer/customer_repository.dart';
import 'package:ploff_kebab/src/presentation/pages/splash/status.dart';

import '../../../data/models/customer/customer_phone_request.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.customerRepository) : super(const AuthInitialState()) {
    on<AuthPhoneAlterEvent>(_onAltered);
    on<AuthCheckMessageEvent>(_onPhoneCheck);
    on<AuthSendMessageEvent>(_onMessageSend);
  }

  final CustomerRepository customerRepository;

  void _onAltered(AuthPhoneAlterEvent event, Emitter<AuthState> emit) {
   if(event.value.length <= 11){
    emit(const AuthInitialState());
    return;
   }
   emit(AuthPhoneState(event.value));
  }
  Future<void> _onPhoneCheck(AuthCheckMessageEvent event, Emitter<AuthState> emit, ) async {
    emit(const AuthLoadingState());
    final Either<Failure, CustomerPhoneResponse> result = await customerRepository.receiverCustomerByPhone(
        request: CustomerPhoneRequest(
          phone: '+998${event.phone.replaceAll(' ', '')}',
        ),
    );
     result.fold(
             (error){
               final int? expectation = (error as ServerFailure).statusCode;
               if(expectation == 404){
                 emit(AuthUserNotFound(phone: event.phone.replaceAll(' ', '')));
               }else {
                 emit(AuthErrorState(message: error.message));
               }
             },
             (right){
              if(right.phone != null){
                emit(const AuthClientPhone(),
                );
              } else {
                emit(
                  const AuthErrorState(message: 'Something went wrong'),
                );
              }
             });
  }

       Future<void> _onMessageSend(
           AuthSendMessageEvent event, Emitter<AuthState> emit
           ) async {
         emit(const AuthLoadingState());

         final result = await customerRepository.loginCustomer(
             request: LoginRequest(phone: '+998${event.phone.replaceAll(' ', '')}'),
         );
         result.fold(
             (error){
              final expectation = (error as ServerFailure).message;
              emit(AuthErrorState(message: expectation));
             },
             (right){
                 if(right.message != null){
                    debugPrint('check ------->=======<------ found out');
                 emit(AuthSuccessState(phone: event.phone.replaceAll(' ', ''),
                 ),
                 );
                 } else {
                   emit(const AuthErrorState(message: 'Went wrong Something'));
                 }
             },

         );
       }


  // RegisterRequest adapter(CustomerRegisterRequest customerRequest) {
  //   return RegisterRequest(
  //       name: customerRequest.name,
  //       phone: customerRequest.phone,
  //       registrationSource: customerRequest.registrationSource);
  // }
  // LoginRequest adapter(CustomerPhoneRequest customerPhoneRequest){
  //   return LoginRequest(
  //     phone: customerPhoneRequest.phone,
  //
  //   );
  // }

}
// on<RequestLoginEvent>(_requestLoginEvent);
// on<PhoneEvent>(_phoneEvent);
// Future<void> _requestLoginEvent(RequestLoginEvent event, Emitter<AuthState> emit) async {
//   final result = await customerRepository.loginCustomer(request: event.loginRequest);
//   emit(state.copyWith(loginReqSuccess: false));
//   result.fold(
//         (error) => emit(
//       state.copyWith(apiStatus: ApiStatus.failure),
//     ),
//         (right) => emit(
//       state.copyWith(
//         apiStatus: ApiStatus.success,
//         loginReqSuccess: result.right,
//       ),
//     ),
//   );
// }
// Future<void> _phoneEvent(PhoneEvent event, Emitter<AuthState> emit) async {
//   final result = await customerRepository.receiverCustomerByPhone(request: event.phoneRequest);
//   // emit(state.copyWith(isLogin: false, isNotFound: true,));
//   result.fold((error) {
//     if ('$error'.contains('Not Found')) {
//       return emit(state.copyWith(isNotFound: true));
//     }
//     emit(state.copyWith(apiStatus: ApiStatus.failure, isNotFound: true));
//   }, (right) {
//     add(RequestLoginEvent(LoginRequest(phone: event.phoneRequest.phone)));
//     return emit(state.copyWith(apiStatus: ApiStatus.success, isNotFound: false));
//   });
// }
