import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:green_garden/provider_pages/login_provider_page.dart';

class RegisterProvider extends ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  String _name = "";
  String _pass = "";
  String _confirmPass = "";
  String? _errorName;
  String? _errorPass;
  String? _errorConfirmPass;
  String? _message;
  String? _errorMessage;

  String get name => _name;
  String get pass => _pass;
  String get confirmPass => _confirmPass;
  String? get errorName => _errorName;
  String? get errorPass => _errorPass;
  String? get errorConfirmPass => _errorConfirmPass;
  String? get message => _message;
  String? get errorMessage => _errorMessage;

  void setName(String value) {
    _name = value;
    if (_name.isEmpty) {
      _errorName = "Email must not be empty";
    } else if (_name.length < 3) {
      _errorName = "Email must be at least 3 characters long";
    } else {
      _errorName = null;
    }
    notifyListeners();
  }

  void setPass(String value) {
    _pass = value;
    if (_pass.isEmpty) {
      _errorPass = "Password mus not be empty";
    } else if (_pass.length < 3) {
      _errorPass = "Password must be at least 6 characters long";
    } else {
      _errorPass = null;
    }
    notifyListeners();
  }

  void setPassConfirm(String value) {
    _confirmPass = value;
    if (_confirmPass != _pass) {
      _errorConfirmPass = "Password not match";
    } else {
      _errorConfirmPass = null;
    }
    notifyListeners();
  }

  bool passwordConfirmed(BuildContext context) {
    if (passwordController.text.trim() == confirmPassController.text.trim()) {
      return true;
    } else {
      _showSnackBarMessage(context, "Password is not matches");
      return false;
    }
  }

  Future<void> signUp(BuildContext context) async {
    final email = emailController.text.trim();
    final pass = passwordController.text.trim();
    final confirmPass = confirmPassController.text.trim();

    if (email.isEmpty || pass.isEmpty || confirmPass.isEmpty) {
      _errorMessage = "Please fill all the fields !!";
      _showSnackBarMessage(context, _errorMessage!);
      return;
    }

    if (passwordConfirmed(context)) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: pass,
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPageProvider(
              toRegisterPage: () {},
            ),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          _showSnackBarMessage(
              context, "Password should be at least 6 characters");
        } else {
          _showSnackBarMessage(context, e.message ?? "Registration failed");
        }
      }
    }
  }

  void _showSnackBarMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(child: Text(message)),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.black,
      ),
    );
  }
}
