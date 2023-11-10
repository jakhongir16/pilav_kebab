part of 'customer_register_bloc.dart';

abstract class CustomerRegisterState extends Equatable {
  const CustomerRegisterState();
}


class CustomerRegisterInitial extends CustomerRegisterState {
  @override
  List<Object> get props => [];
}

class RegisterLoadingState extends CustomerRegisterState {
  const RegisterLoadingState();

  @override
  List<Object?> get props => [];
}

class CustomerRegisterSuccessState extends CustomerRegisterState {
  const CustomerRegisterSuccessState({required this.userName, required this.phone});
  final String userName;
  final String phone;
  @override
  List<Object?> get props => [userName, phone];
}


class CustomerRegisterErrorState extends CustomerRegisterState {
  const CustomerRegisterErrorState({required this.message});
  final String message;
  @override
  List<Object?> get props => [message];
}

class CustomerRegisterConfirmSuccess extends CustomerRegisterState{
  const CustomerRegisterConfirmSuccess({required this.phone,required this.name});
  final String phone;
  final String name;

  @override
  List<Object?> get props => [phone,name];

}

class CustomerRegisterLoadingState extends CustomerRegisterState {
  const CustomerRegisterLoadingState();
  @override
  List<Object?> get props => [];
}



// class UserRegisterLoadingState extends CustomerRegisterState {
//   const UserRegisterLoadingState();
//
//   @override
//   List<Object?> get props => [];
// }

// const CustomerRegisterState({
// this.registerResponse,
// this.apiStatus = ApiStatus.initial,
// this.phone,
// this.name,
// this.registrationSource,
// this.isNotFound = false,
// this.isLoading = false,
// this.successRegReq = false,
// this.isRegister = false,
// this.isFound = false,
// });

// final RegisterResponse? registerResponse;
// final ApiStatus apiStatus;
// final String? phone;
// final String? name;
// final String? registrationSource;
// final bool successRegReq;
// final bool isLoading;
// final bool isNotFound;
// final bool isRegister;
// final bool isFound;

// CustomerRegisterState copyWith({
//   RegisterResponse? registerResponse,
//   ApiStatus? apiStatus,
//   String? phone,
//   String? name,
//   String? registrationSource,
//   bool? successRegReq,
//   bool? isLoading,
//   bool? isNotFound,
//   bool? isRegister,
//   bool? isFound,
// }) =>
// CustomerRegisterState(
//   registerResponse: registerResponse ?? this.registerResponse,
//   apiStatus: apiStatus ?? this.apiStatus,
//   phone: phone ?? this.phone,
//   name: name ?? this.name,
//   registrationSource: registrationSource ?? this.registrationSource,
//   successRegReq: successRegReq ?? this.successRegReq,
//   isLoading: isLoading ?? this.isLoading,
//   isNotFound: isNotFound ?? this.isNotFound,
//   isRegister: isRegister ?? this.isRegister,
//   isFound: isFound ?? this.isFound,
// );
// @override
// List<Object?> get props => [
// registerResponse,
// apiStatus,
// name,
// phone,
// registrationSource,
// successRegReq,
// isLoading,
// isNotFound,
// isRegister,
// isFound,
// ];
// }