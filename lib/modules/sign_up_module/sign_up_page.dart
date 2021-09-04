import 'package:erply_pos/modules/country_select_module/country_select.dart';
import 'package:erply_pos/modules/sign_up_module/sign_up_controller.dart';
import 'package:erply_pos/modules/sign_up_module/widgets/custom_suffix_icon.dart';
import 'package:erply_pos/modules/sign_up_module/widgets/custom_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../constants.dart';

class SignUpPage extends StatelessWidget {
  final controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: GetBuilder<SignUpController>(builder: (gxValues) {
        return SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                SvgPicture.asset(
                  "assets/icons/mobile.svg",
                  height: 40.h,
                ),
                Text(
                  "Point of Sale",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 24.sp,
                    fontFamily: "Erply Ladna",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                  child: buildLoginMethod(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                  child: buildClientCodeFormField(gxValues),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                  child: buildEmailFormField(gxValues),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                  child: buildPasswordFormField(),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => CountrySelectPage());
                    },
                    child: Container(
                      width: 1.sw,
                      height: 40.h,
                      color: Color(0xff50afe2),
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "SIGN IN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Erply Ladna",
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.21,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                  child: Container(
                    width: 1.sw,
                    height: 40.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff50afe2),
                        width: 1,
                      ),
                      color: Color(0xfff5faf9),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "CREATE FREE ACCOUNT",
                          style: TextStyle(
                            color: Color(0xff1a1a1a),
                            fontSize: 14.sp,
                            fontFamily: "Erply Ladna",
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.21,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Remember me",
                        style: TextStyle(
                          color: Color(0xff4d4d4d),
                          fontSize: 16.sp,
                          fontFamily: "Erply Ladna",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      CustomSwitch(
                        value: gxValues.enableRememberMe,
                        onChanged: (bool val) {
                          gxValues.changeSwitchValue(val);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget buildPasswordFormField() {
    return GetBuilder<SignUpController>(builder: (gxValues) {
      return TextFormField(
        onSaved: (newPassword) => gxValues.password = newPassword,
        onChanged: (password) {
          // if (firstSubmit) _formKey.currentState.validate();
        },
        validator: (password) {
          if (password.isEmpty) {
            return kPassNullError;
          } else if (password.isNotEmpty && password.length <= 7) {
            return kShortPassError;
          }

          return null;
        },
        decoration: InputDecoration(
            labelText: "Password",
            suffixIcon: IconButton(
              icon: Icon(gxValues.hidePassword
                  ? MdiIcons.eyeOffOutline
                  : MdiIcons.eyeOutline),
              onPressed: () {
                gxValues.switchHidePassword();
              },
            )),
        obscureText: gxValues.hidePassword,
      );
    });
  }

  Widget buildLoginMethod() {
    return GetBuilder<SignUpController>(builder: (gxValues) {
      return TextFormField(
        controller: gxValues.loginMethodController,
        onSaved: (newLoginMethod) {
          return gxValues.clientCode = newLoginMethod;
        },
        onChanged: (loginMethod) {
          // if (firstSubmit) _formKey.currentState.validate();
        },
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 10.h),
            child: SvgPicture.asset(
              "assets/icons/Union.svg",
            ),
          ),
          labelText: "Login Method",
          suffixIcon: Icon(Icons.unfold_more),
        ),
        keyboardType: TextInputType.number,
        enabled: false,
      );
    });
  }

  TextFormField buildClientCodeFormField(SignUpController gxValues) {
    return TextFormField(
      onSaved: (newclientCode) => gxValues.clientCode = newclientCode,
      onChanged: (clientCode) {
        // if (firstSubmit) _formKey.currentState.validate();
      },
      decoration: InputDecoration(
        labelText: "Client Code",
        hintText: "Enter your Client Code",
        suffixIcon: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Text(
            "123",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }

  buildEmailFormField(SignUpController gxValues) {
    return TextFormField(
      onSaved: (newEmail) => gxValues.email = newEmail,
      onChanged: (email) {
        // if (firstSubmit) _formKey.currentState.validate();
      },
      validator: (email) {
        if (email.isEmpty) {
          return kEmailNullError;
        } else if (email.isNotEmpty && !emailValidatorRegExp.hasMatch(email)) {
          return kInvalidEmailError;
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your Email",
        // suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Mail.svg"),
        suffixIcon: Icon(MdiIcons.emailOutline),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
