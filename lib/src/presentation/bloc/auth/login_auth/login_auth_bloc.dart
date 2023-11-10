import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_auth_event.dart';
part 'login_auth_state.dart';

class LoginAuthBloc extends Bloc<LoginAuthEvent, LoginAuthState> {
  LoginAuthBloc() : super(LoginAuthInitial()) {
    on<LoginAuthEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
