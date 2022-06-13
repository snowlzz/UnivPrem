import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:univprem/pages/initial.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    home: Initial(),
    theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 101, 187, 88),
        )),
  ));
}
