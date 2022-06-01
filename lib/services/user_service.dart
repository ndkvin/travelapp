import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelapp/models/user_model.dart';

class UserService {
  CollectionReference _userCollection = FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userCollection.doc(user.id).set({
        'email': user.email,
        'name': user.name,
        'hobby': user.hobby,
        'balance': user.balance,
      });
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> getUser(String id) async {
    try {
      DocumentSnapshot userSnapshot = await _userCollection.doc(id).get();
      return UserModel(
        id: id,
        email: userSnapshot['email'],
        name: userSnapshot['name'],
        hobby: userSnapshot['hobby'],
        balance: userSnapshot['balance'],
      );
    } catch (e) {
      throw e;
    }
  }
}