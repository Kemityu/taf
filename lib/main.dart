import 'package:flutter/material.dart';
import 'package:taf_app/screens/bienvenue_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.delayed(const Duration(seconds: 29), () {
    runApp(const MainApp());
  });
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const BienvenueScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


