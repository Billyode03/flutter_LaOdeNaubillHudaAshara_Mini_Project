import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgetPassProvider extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();

  String _email = '';
  String? _errorEmail;

  String get email => _email;
  String? get errorEmail => _errorEmail;

  void setEmail(String value) {
    _email = value;
    if (_email.isEmpty) {
      _errorEmail = "Email must be fill first";
    } else {
      _errorEmail = null;
    }
    notifyListeners();
  }

  Future passwordReset(BuildContext context) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: emailController.text.trim(),
      );
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                  'Password reset link has been sent to the email address'),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(
                'Fill Email first !!',
              ),
            );
          });
    }
  }
}
