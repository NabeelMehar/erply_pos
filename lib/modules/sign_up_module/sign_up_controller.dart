import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  bool enableRememberMe;
  String email, password, clientCode;
  bool hidePassword = true;

  bool firstSubmit = false;
  bool remember = false;

  TextEditingController loginMethodController;

  @override
  void onInit() {
    loginMethodController = TextEditingController();
    loginMethodController.text="UserName";
    enableRememberMe = false;
    super.onInit();
  }

  void changeSwitchValue(bool val) {
    enableRememberMe = val;
    update();
  }

  void switchHidePassword() {
    hidePassword = !hidePassword;
    update();
  }
}
