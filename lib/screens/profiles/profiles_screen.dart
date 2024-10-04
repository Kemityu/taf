import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/screens/auth/authentification_screen.dart';
import 'package:taf_app/screens/profiles/composant_profiles/devices_inbox.dart';
import 'package:taf_app/screens/profiles/composant_profiles/divider.dart';
import 'package:taf_app/utils/ulis.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profiles extends StatelessWidget {
  const profiles({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColors.backgroundColor,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    Text(
                      'Ouragan TV',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.backgroundColor),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return AuthentificationScreen();
                            },
                          );
                        },
                        child: Text("Se connecter ou s'inscrire",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),),),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 30, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cet appareil',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const devices_inbox(
                      icon: FontAwesomeIcons.bell,
                      title: 'Messages',
                      description: 'Accès à vos notifications',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const divider(),
                    const SizedBox(
                      height: 5,
                    ),
                    const devices_inbox(
                      icon: FontAwesomeIcons.arrowDown,
                      title: 'Téléchargements',
                      description: 'Accédez à vos téléchargements',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Paramètres de l'application",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const devices_inbox(
                      // ignore: deprecated_member_use
                      icon: FontAwesomeIcons.userGear,
                      title: 'Notifications',
                      description: 'Gérer les préférences de notification',
                    ),
                    const divider(),
                    const SizedBox(
                      height: 5,
                    ),
                    const devices_inbox(
                      icon: FontAwesomeIcons.fileContract,
                      title: "Conditions d'utilisation",
                      description: "Conditions d'utilisation de Ouragan Tv",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const divider(),
                    const devices_inbox(
                      icon: FontAwesomeIcons.info,
                      title: 'À propos',
                      description: 'Version 1.0.0',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Autres',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const devices_inbox(
                      icon: FontAwesomeIcons.shareFromSquare,
                      title: 'Partagez Ouragan TV',
                      description:
                          "Obtenir un lien pour partager l'application",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const divider(),
                    const SizedBox(
                      height: 5,
                    ),
                    const devices_inbox(
                      icon: FontAwesomeIcons.comment,
                      title: 'Commentaires',
                      description: "Donnez votre avis sur l'application",
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const divider(),
                    const SizedBox(
                      height: 5,
                    ),
                    const devices_inbox(
                      icon: FontAwesomeIcons.fileCircleQuestion,
                      title: 'Aides',
                      description: 'Obtenir un support technique',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "KEMTIYU",
                            style: GoogleFonts.delaGothicOne(
                                color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            "© 2024 Kemtiyu",
                            style: GoogleFonts.roboto(
                                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
