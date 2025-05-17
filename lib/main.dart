import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MarinaJCApp());
}

class MarinaJCApp extends StatelessWidget {
  const MarinaJCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MarinaJC Control',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF39B5FF),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}