part of 'confirm_code_bloc.dart';


abstract class ConfirmCodeState extends Equatable {
  const ConfirmCodeState();
}

class ConfirmCodeInitial extends ConfirmCodeState {
  const ConfirmCodeInitial();

  @override
  List<Object?> get props => [];
}

class ConfirmCodeSuccessState extends ConfirmCodeState {
  const ConfirmCodeSuccessState({required this.isUserFound});
  final String isUserFound;

  @override
  List<Object?> get props => [isUserFound];
}

class ConfirmCodeLoadingState extends ConfirmCodeState {
  const ConfirmCodeLoadingState();

  @override

  List<Object?> get props => [];
}

class ConfirmPhoneCodeState extends ConfirmCodeState {
  const ConfirmPhoneCodeState(this.phone);
  final String phone;

  @override
  List<Object?> get props => [phone];
}

class ConfirmCodeErrorState extends ConfirmCodeState {
  const ConfirmCodeErrorState({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

class ConfirmSuccess extends ConfirmCodeState{
  const ConfirmSuccess({required this.phone, required this.name});
  final String name;
  final String phone;

  @override
  List<Object?> get props => [name, phone];
}

class ConfirmLoginSuccess extends ConfirmCodeState {
  const ConfirmLoginSuccess();

  @override
  List<Object?> get props => [];
}
