import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_confirm_login.dart';
import 'package:ploff_kebab/src/data/models/customer/register_confirm_request.dart';
import 'package:ploff_kebab/src/domain/failure/failure.dart';
import 'package:ploff_kebab/src/domain/repositories/customer/customer_repository.dart';

part 'confirm_code_event.dart';
part 'confirm_code_state.dart';

class ConfirmCodeBloc extends Bloc<ConfirmCodeEvent, ConfirmCodeState> {
  ConfirmCodeBloc(this.customerRepository) : super(const ConfirmCodeInitial()) {
    on<ConfirmCodeCheckMessageEvent>(_onLoginConfirm);
    on<ConfirmCodeRegisterEvent>(_onRegisterConfirm);
  }
  final CustomerRepository customerRepository;

  Future<void> _onLoginConfirm(ConfirmCodeCheckMessageEvent event, Emitter<ConfirmCodeState> emit) async {
    emit(const ConfirmCodeLoadingState());
    final result = await customerRepository.loginConfirm(
        request: CustomerConfirmLogin(
          phone: '+998${event.phone.replaceAll(' ', '')}',
          code: event.code
        ),
    );
    result.fold((error){
      final exceptation = (error as ServerFailure).message;
      emit(ConfirmCodeErrorState(message: exceptation));
    }, (right){
         emit(const ConfirmLoginSuccess());
    });
  }

  Future<void> _onRegisterConfirm(
      ConfirmCodeRegisterEvent event, Emitter<ConfirmCodeState> emit
      ) async {
     emit(const ConfirmCodeLoadingState());
     final result = await customerRepository.registerConfirm(
         request: RegisterConfirmRequest(
           phone: '+998${event.phone.replaceAll(' ', '')}',
           code: event.code,
         ),
     );
     result.fold(
         (error) {
           final exceptation = (error as ServerFailure).message;
           emit(ConfirmCodeErrorState(message: exceptation),
           );
         },
         (right){
           if(right.name != null && right.phone != null){
             emit(
                 ConfirmSuccess(phone: right.phone!, name: right.name!),
             );
           } else {
             const ConfirmCodeErrorState(message: 'Something went wrong, please check');
           }
         }
     );
  }
}
//'+998${event.phone.replaceAll(' ', '')}'
//'+998${event.phone.replaceAll(' ', '')}'