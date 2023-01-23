import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/screens/create_profile.dart';
import 'package:flutter_application_1/ui/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "SF Pro Display",
      ),
      home: const CreateProfile(),
    );
  }
}
