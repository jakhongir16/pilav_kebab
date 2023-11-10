part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

}

class AuthInitialState extends AuthState {
  const AuthInitialState();

  @override
  List<Object?> get props => [];
}

class AuthLoadingState extends AuthState {
  const AuthLoadingState();
  @override
  List<Object?> get props => [];
}

class AuthSuccessState extends AuthState {
  const AuthSuccessState({required this.phone});

  final String phone;

  @override
  List<Object?> get props =>[phone];
}


class AuthPhoneState extends AuthState {
  const AuthPhoneState(this.phone);

  final String phone;

  @override
  List<Object?> get props =>[phone];
}

class AuthErrorState extends AuthState {
  const AuthErrorState({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}

class AuthClientPhone extends AuthState {
  const AuthClientPhone();

  @override
  List<Object?> get props => [];
}

class AuthUserNotFound extends AuthState {
  const AuthUserNotFound({required this.phone});
  final String phone;
  @override
  List<Object?> get props => [phone];
}
// this.phone,
// this.apiStatus = ApiStatus.initial,
// this.isNotFound,
// this.isLogin = false,
// this.loginReqSuccess = false,
// this.isLoading = false,
// this.isFound = false,

// final ApiStatus apiStatus;
// final String? phone;
// final bool isLoading;
// final bool? isNotFound;
// final bool isLogin;
// final bool loginReqSuccess;
// final bool isFound;

// AuthState copyWith({
//   ApiStatus? apiStatus,
//   bool? isLoading,
//   bool? isNotFound,
//   bool? isLogin,
//   bool? loginReqSuccess,
//   String? phone,
//   bool? isFound,
// }) =>
//     AuthState(
//       apiStatus: apiStatus ?? this.apiStatus,
//       isLoading: isLoading ?? this.isLoading,
//       isNotFound: isNotFound ?? this.isNotFound,
//       isLogin: isLogin ?? this.isLogin,
//       loginReqSuccess: loginReqSuccess ?? this.loginReqSuccess,
//       phone: phone ?? this.phone,
//       isFound: isFound ?? this.isFound,
//     );
