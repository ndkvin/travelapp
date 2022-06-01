import "package:firebase_auth/firebase_auth.dart";
import 'package:travelapp/cubit/auth_cubit.dart';
import 'package:travelapp/models/user_model.dart';
import 'package:travelapp/services/user_service.dart';

class AuthSevice {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> SignUp({
    required String email,
    required String password,
    required String name,
    required String hobby,
  }) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
        id: userCredential.user!.uid, 
        email: email, 
        name: name, 
        hobby: hobby, 
        balance: 2800000000,
      );

      UserService().setUser(user);

      return user;
    } catch (e){
      throw e;
    }
  }

  Future<void> SignOut () async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  } 
}