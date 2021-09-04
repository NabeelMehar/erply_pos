import 'package:erply_pos/modules/contact_details_module/contact_details.dart';
import 'package:erply_pos/modules/global_widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CompanyDetailsPage extends StatelessWidget {
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
                    "Enter your company details",
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
                    buildCompanyNameFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildAddressLine1FormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildAddressLine2FormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildPostCodeFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildRegCodeFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildVATNumberFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => ContactDetailsPage());
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

  Widget buildCompanyNameFormField() {
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
          labelText: "Company Name",
          hintText: "Company Name",
        ),
      ),
    );
  }

  Widget buildAddressLine1FormField() {
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
          labelText: "Address Line 1",
          hintText: "Address Line 1",
        ),
      ),
    );
  }

  Widget buildAddressLine2FormField() {
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
          labelText: "Address Line 2",
          hintText: "Address Line 2",
        ),
      ),
    );
  }

  Widget buildPostCodeFormField() {
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
          labelText: "Post Code",
          hintText: "Post Code",
        ),
      ),
    );
  }

  Widget buildRegCodeFormField() {
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
          labelText: "Reg. Code",
          hintText: "Reg. Code",
        ),
      ),
    );
  }

  Widget buildVATNumberFormField() {
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
          labelText: "VAT Number",
          hintText: "VAT Number",
        ),
      ),
    );
  }
}
