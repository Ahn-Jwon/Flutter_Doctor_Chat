import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:team3_flutter_project_self_diagnosis_app/firebase_options.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:team3_flutter_project_self_diagnosis_app/view/home.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
