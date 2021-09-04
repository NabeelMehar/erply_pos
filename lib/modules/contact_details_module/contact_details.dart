import 'package:erply_pos/modules/big_company_module/big_company.dart';
import 'package:erply_pos/modules/contact_details_module/contact_details.dart';
import 'package:erply_pos/modules/global_widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ContactDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    "Enter your Contact details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: "Erply Ladna",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildFirstNameFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildLastNameFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildEmailFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildPhoneFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildRoleFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => BigCompanyPage());
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
                                "Next",
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
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildFirstNameFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: TextFormField(
        onSaved: (newclientCode) {
          // clientCode = newclientCode;
        },
        onChanged: (clientCode) {
          // if (firstSubmit) _formKey.currentState.validate();
        },
        decoration: InputDecoration(
          labelText: "First Name",
          hintText: "First Name",
        ),
      ),
    );
  }

  Widget buildLastNameFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: TextFormField(
        onSaved: (newclientCode) {
          // clientCode = newclientCode;
        },
        onChanged: (clientCode) {
          // if (firstSubmit) _formKey.currentState.validate();
        },
        decoration: InputDecoration(
          labelText: "Last Name",
          hintText: "Last Name",
        ),
      ),
    );
  }

  Widget buildEmailFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: TextFormField(
        onSaved: (newclientCode) {
          // clientCode = newclientCode;
        },
        onChanged: (clientCode) {
          // if (firstSubmit) _formKey.currentState.validate();
        },
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Email",
        ),
      ),
    );
  }

  Widget buildPhoneFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: TextFormField(
        onSaved: (newclientCode) {
          // clientCode = newclientCode;
        },
        onChanged: (clientCode) {
          // if (firstSubmit) _formKey.currentState.validate();
        },
        decoration: InputDecoration(
          labelText: "Phone",
          hintText: "Phone",
        ),
      ),
    );
  }

  Widget buildRoleFormField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: TextFormField(
        onSaved: (newclientCode) {
          // clientCode = newclientCode;
        },
        onChanged: (clientCode) {
          // if (firstSubmit) _formKey.currentState.validate();
        },
        decoration: InputDecoration(
          labelText: "Role",
          hintText: "Role",
        ),
      ),
    );
  }
}
