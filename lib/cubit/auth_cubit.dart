import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travelapp/models/user_model.dart';
import 'package:travelapp/services/auth_service.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp(
    {
      required String email,
      required String password,
      required String name,
      String hobby = "",
    }
  ) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthSevice()
        .SignUp(email: email, password: password, name: name, hobby: hobby);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFiled(e.toString()));
    }
  }
}
