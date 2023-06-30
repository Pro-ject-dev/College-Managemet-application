import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Responsive/responsive_admin.dart';
import 'package:flutter_application_1/Responsive/responsive_update.dart';
import 'package:flutter_application_1/Responsive/update_table.dart';
import 'package:flutter_application_1/authentication/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCpwDQzN_oIGKAdopoEORY89KNAi4ZGBSs",
          authDomain: "ca-admin-66a00.firebaseapp.com",
          projectId: "ca-admin-66a00",
          storageBucket: "ca-admin-66a00.appspot.com",
          messagingSenderId: "74023124474",
          appId: "1:74023124474:web:721d7df4a8f9c92c34f843",
          measurementId: "G-DXN3LXK56G"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CA-ADMIN PANEL',
        home: login());
  }
}
