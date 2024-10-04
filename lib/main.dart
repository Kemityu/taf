import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taf_app/screens/menuScreen/bienvenue_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  Future.delayed(const Duration(seconds: 29), () {
    runApp(const MainApp());
  });
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BienvenueScreen(0),
      debugShowCheckedModeBanner: false,
    );
  }
}
