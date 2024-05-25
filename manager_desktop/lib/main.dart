import 'package:doctor_app/pages/Assistants.dart';
import 'package:doctor_app/pages/EditManagerProfile.dart';
import 'package:doctor_app/pages/Patients.dart';
import 'package:doctor_app/pages/doctors.dart';
import 'package:doctor_app/pages/first.dart';
import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/pages/login.dart';
import 'package:doctor_app/pages/logo.dart';
import 'package:doctor_app/pages/manage.dart';
import 'package:doctor_app/pages/manager_profile.dart';
import 'package:doctor_app/pages/notification.dart';
import 'package:doctor_app/pages/reports.dart';
import 'package:flutter/material.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   initialRoute:  "/",
      debugShowCheckedModeBanner: false,
       theme: ThemeData.light(useMaterial3: true),
  routes: {
    "/" :  (context) => const Logo(),
    "/Login" :  (context) => const Login(),
    "/homepage" :  (context) => const Home(),
    "/Profile" :  (context) => const ManagerProfile(),
    "/EditProfile" :  (context) => const EditProfile(),
    "/Manage" :  (context) => const Manage(),
    "/Notifications" :  (context) => const Notifications(),
    "/Doctors" :  (context) => const Doctors(),
    "/Patients" :  (context) => const Patients(),
    "/Assistants" :  (context) => const Assistants(),
    "/reports":(context) => const Reports(),
    "/first":(context) => const First()

  },
    );
  }
}