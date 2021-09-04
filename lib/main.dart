import 'package:erply_pos/modules/sign_up_module/sign_up_page.dart';
import 'package:erply_pos/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () {
          return GetMaterialApp(
            title: 'Flutter Demo',
            theme: theme(),
            home: SignUpPage(),
          );
        });
  }
}
