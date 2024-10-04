import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/utils/ulis.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: AppColors.backgroundColor,
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Se connecter",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                    Text(
                      "Créer un compte",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
             const SizedBox(height: 20), // Espacement entre le titre et les champs
             const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 16), // Espacement entre les champs
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  obscureText: true, // Pour masquer le mot de passe
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Espacement avant le bouton de connexion
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(250, 45),
                    backgroundColor: AppColors.backgroundColor),
                onPressed: () {
                  // Action de connexion ici
                },
                child: Text(
                  "Se connecter",
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
