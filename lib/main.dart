import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/auth_gate.dart';
import 'package:first_app/firebase_options.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FlutterFire UI - Auth',
      home: AuthGate(),
    );
  }
}
