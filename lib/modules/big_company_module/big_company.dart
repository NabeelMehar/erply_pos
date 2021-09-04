import 'package:erply_pos/modules/global_widgets/app_bar.dart';
import 'package:erply_pos/modules/software_needs_module/software_needs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BigCompanyPage extends StatelessWidget {
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
                    buildNrOfLocationsFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildNrOfCashRegistersFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildNrOfSystemUsersFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    buildNrOfProductsFormField(),
                    SizedBox(
                      height: 0.04.sh,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => SoftwareNeedsPage());
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

  Widget buildNrOfLocationsFormField() {
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
          labelText: "Nr Of Locations",
          hintText: "Nr Of Locations",
        ),
      ),
    );
  }

  Widget buildNrOfCashRegistersFormField() {
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
          labelText: "Nr Of CashRegisters",
          hintText: "Nr Of CashRegisters",
        ),
      ),
    );
  }

  Widget buildNrOfSystemUsersFormField() {
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
          labelText: "Nr Of SystemUsers",
          hintText: "Nr Of SystemUsers",
        ),
      ),
    );
  }

  Widget buildNrOfProductsFormField() {
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
          labelText: "Nr Of Products",
          hintText: "Nr Of Products",
        ),
      ),
    );
  }
}
