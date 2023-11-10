part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class AuthInitialEvent extends AuthEvent {
  const AuthInitialEvent();

  @override
  List<Object?> get props => [];
}

class AuthPhoneAlterEvent extends AuthEvent {
  const AuthPhoneAlterEvent(this.value);

  final String value;

  @override
  List<Object?> get props => [value];
}


class AuthCheckMessageEvent extends AuthEvent {
  const AuthCheckMessageEvent(this.phone, this.context);

  final String phone;
  final BuildContext context;

  @override
  List<Object?> get props => [phone, context];
}
class AuthSendMessageEvent extends AuthEvent{
  const AuthSendMessageEvent({required this.phone});
  final String phone;
  @override
  List<Object?> get props => [phone];

}

class PhoneEvent extends AuthEvent {
  const PhoneEvent({required this.phoneRequest});



  final CustomerPhoneRequest phoneRequest;

  @override
  List<Object?> get props => [phoneRequest];
}



class RequestLoginEvent extends AuthEvent {
  const RequestLoginEvent(this.loginRequest);

  final LoginRequest loginRequest;

  @override
  List<Object?> get props => [loginRequest];
}