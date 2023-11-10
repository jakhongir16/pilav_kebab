part of 'customer_register_bloc.dart';

class CustomerRegisterEvent extends Equatable {
  const CustomerRegisterEvent();

  @override
  List<Object?> get props => [];
}

class CustomerRegisterEventInitial extends CustomerRegisterEvent {
  const CustomerRegisterEventInitial();
  @override
  List<Object?> get props => [];
}

class CustomerRegisterCheckEvent extends CustomerRegisterEvent{
  const CustomerRegisterCheckEvent({required this.userName,required this.phone});
  final String userName;
  final String phone;

  @override
  List<Object?> get props => [userName,phone];
}

class CustomerRegisterConfirmEvent extends CustomerRegisterEvent {
  const CustomerRegisterConfirmEvent({required this.phone,required this.name});
  final String phone;
  final String name;

  @override
  List<Object?> get props => [name,phone];
}

class GetRegisterCustomerEvent extends CustomerRegisterEvent {
  const GetRegisterCustomerEvent({required this.phone, required this.name, required this.registrationSource});
  final String phone;
  final String name;
  final String registrationSource;

  @override
  List<Object?> get props =>[phone, name, registrationSource];

 }

class RegisterErrorCustomerEvent extends CustomerRegisterEvent {
  const RegisterErrorCustomerEvent();

  @override
  List<Object?> get props => [];
}

class RegisterRequestEvent extends CustomerRegisterEvent {
  const RegisterRequestEvent(this.registerRequest);
  final RegisterRequest registerRequest;

  @override
  List<Object?> get props => [registerRequest];
}

class RegisterNameAlterEvent extends CustomerRegisterEvent {
  const RegisterNameAlterEvent(this.value);
  final String value;

  @override
  List<Object?> get props => [value];
}

class NameEvent extends CustomerRegisterEvent {
  const NameEvent({required this.nameRequest});


  final CustomerRegisterRequest nameRequest;

  @override
  List<Object?> get props => [nameRequest];
}