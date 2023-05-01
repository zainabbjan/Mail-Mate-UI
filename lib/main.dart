import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mail_mate/presentation/splash_screen.dart';

void main() async{
   await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MaterialApp(
               debugShowCheckedModeBanner: false,
            home: SplashScreen(),
          );
        });
  }
}
