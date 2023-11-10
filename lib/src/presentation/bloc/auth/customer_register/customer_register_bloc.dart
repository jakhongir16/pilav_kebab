import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:ploff_kebab/src/core/mixin/cache_mixin.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_register_confirm_response.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_register_request.dart';
import 'package:ploff_kebab/src/data/models/customer/register_confirm_request.dart';
import 'package:ploff_kebab/src/data/models/customer/register_request.dart';
import 'package:ploff_kebab/src/domain/failure/failure.dart';

import 'package:ploff_kebab/src/domain/repositories/customer/customer_repository.dart';

part 'customer_register_event.dart';

part 'customer_register_state.dart';

class CustomerRegisterBloc extends Bloc<CustomerRegisterEvent, CustomerRegisterState> with CacheMixin {


  CustomerRegisterBloc(this.customerRepository) : super(CustomerRegisterInitial()) {
     on<CustomerRegisterCheckEvent>(_onMessageSend);
     on<CustomerRegisterConfirmEvent>(_registerConfirm);
  }
  final CustomerRepository customerRepository;

  Future<void> _onMessageSend(
        CustomerRegisterCheckEvent event, Emitter<CustomerRegisterState> emit
      ) async {
      emit(const CustomerRegisterLoadingState(),
      );
      final result = await customerRepository.registerCustomer(
          request: CustomerRegisterConfirmResponse(
            phone: '+998${event.phone.replaceAll(' ', '')}',
            name: event.userName.replaceAll(' ', ''),
          ),
      );
      result.fold(
          (error){
          final expectation = (error as ServerFailure).message;
          emit(CustomerRegisterErrorState(message: expectation));
          },
          (right){
           emit(CustomerRegisterSuccessState(userName: event.userName, phone: event.phone),
           );
          }
          );
  }

  Future<void> _registerConfirm(
      CustomerRegisterConfirmEvent event, Emitter<CustomerRegisterState> emit
      ) async {
     emit(const CustomerRegisterLoadingState());
     final result = await customerRepository.registerConfirm(
         request: RegisterConfirmRequest(
             phone: '+998${event.phone.replaceAll(' ', '')}',
             code: event.name),
         );
     result.fold(
         (error){
           final expectation = (error as ServerFailure).message;
           emit(CustomerRegisterErrorState(message: expectation),
           );
         },
         (right){
           if(right.name != null && right.phone != null){
             emit(
               CustomerRegisterConfirmSuccess(phone: right.phone!, name: right.name.toString(),
               ),
             );
           }
         }
     );
  }



}

// on<RegisterRequestEvent>(_onUserRegister);
// on<NameEvent>(_nameEvent);
// on<RegisterNameAlterEvent>(_onAltered);
// RegisterRequest adapter(CustomerRegisterRequest customerRequest) {
//   //   return RegisterRequest(
//   //       name: customerRequest.name,
//   //       phone: customerRequest.phone,
//   //       registrationSource: customerRequest.registrationSource);
//   // }

// Future<void> _nameEvent(NameEvent event, Emitter<CustomerRegisterState> emit) async {
//   final result = await customerRepository.registerCustomer(request: adapter(event.nameRequest));
//   emit(state.copyWith(isRegister: false, isNotFound: false));
//   result.fold((error) {
//     if ('$error'.contains('Not found')) {
//       return emit(state.copyWith(isNotFound: true));
//     }
//     return emit(state.copyWith(apiStatus: ApiStatus.failure));
//   }, (right) {
//     // add(RegisterRequestEvent(RegisterRequest(name: event.nameRequest.name)));
//
//     return emit(state.copyWith(
//       apiStatus: ApiStatus.success,
//       isRegister: true,
//       isNotFound: false,
//       isFound: true,
//     ));
//   });
// }
// Future<void> _onUserRegister(RegisterRequestEvent event, Emitter<CustomerRegisterState> emit) async {
//   emit(state.copyWith(apiStatus: ApiStatus.loading));
//   final result = await customerRepository.registerCustomer(
//     request: event.registerRequest,
//   );
//   emit(state.copyWith(successRegReq: false));
//   result.fold((error) {
//     print('-----------------------------<<<<>>>>------------------');
//     emit(state.copyWith(
//       apiStatus: ApiStatus.failure,
//     ));
//   }, (right) {
//     print('Xato bor bolsa tekshirib ol');
//     emit(state.copyWith(registerResponse: result.right, apiStatus: ApiStatus.success));
//   });
// }
//
// void _onAltered(RegisterNameAlterEvent event, Emitter<CustomerRegisterState> emit) {
//   emit(state.copyWith(name: event.value));
// }
