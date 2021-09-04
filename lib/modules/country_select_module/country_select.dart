import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/country_selection_theme.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:erply_pos/modules/company_details_module/company_details.dart';
import 'package:erply_pos/modules/global_widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constants.dart';

class CountrySelectPage extends StatelessWidget {
  var email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Where do you do",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontFamily: "Erply Ladna",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "business?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontFamily: "Erply Ladna",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: CountryListPick(
                        appBar: CustomAppBar(),
                        theme: CountryTheme(
                          isShowFlag: true,
                          isShowTitle: true,
                          isShowCode: false,
                          isDownIcon: false,
                          showEnglishName: false,
                        ),
                        initialSelection: '+1',
                        // or
                        // initialSelection: 'US'
                        onChanged: (CountryCode code) {
                          // print(code.name);
                          // print(code.code);
                          // print(code.dialCode);
                          // print(code.flagUri);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => CompanyDetailsPage());
                },
                child: Container(
                  width: 1.sw,
                  color: Color(0xff50afe2),
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "GET STARTED",
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
            Expanded(
              child: Image.asset("assets/images/demo.png"),
            ),
          ],
        ),
      ),
    );
  }

  buildEmailFormField() {
    return TextFormField(
      onSaved: (newEmail) => this.email = newEmail,
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
        labelText: "Country Name",
        hintText: "Enter your Email",
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
