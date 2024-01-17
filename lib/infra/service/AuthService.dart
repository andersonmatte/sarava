import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../toast/ToastCustom.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final toastCustom = ToastCustom();

  Future<User?> signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        toastCustom.showToast(
            context, 'Nenhum usuário encontrado para esse e-mail.');
      } else if (e.code == 'wrong-password') {
        toastCustom.showToast(
            context, 'Senha errada fornecida para esse usuário.');
      }
    }
  }
}
