import 'package:flutter/cupertino.dart';

var emailController = TextEditingController();
var senhaController = TextEditingController();

class LoginFunctions {
  BuildContext context;
  LoginFunctions(this.context);

  Future siginWithEmailAndPass() async {
    await Future.delayed(Duration(seconds: 5));
  }

  Future signUp() async {}
  Future singWithGoogle() async {}
  Future signInAnnonymus() async {}
  Future recoverPass() async {}
}
