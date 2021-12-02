import 'package:flutter/material.dart';
import 'package:medifit360/Clinic_Register.dart';
import 'package:medifit360/Login.dart';
import 'package:medifit360/Pharmacy_register.dart';
import 'package:medifit360/register.dart';
import 'package:medifit360/splash.dart';

Widget oldmain() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'splash': (context) => SplashScreen(),
      'clinicreg': (context) => clinicregister(),
      'pharmacyreg': (context) => pharmacyregister(),

    },
  );
}