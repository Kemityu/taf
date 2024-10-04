import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/screens/auth/login_screen.dart';
import 'package:taf_app/utils/ulis.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthentificationScreen extends StatelessWidget {
  const AuthentificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: AppColors.backgroundColor,
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "S'inscrire ou se connecter ",
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 20, right: 20),
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 45),
                      backgroundColor: AppColors.backgroundColor),
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Continuer avec un mail",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 45),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                          color: AppColors.backgroundColor, width: 1.0)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset("assets/images/google.png", width: 30, height: 30,),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Continuer avec Google",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 45),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                          color: AppColors.backgroundColor, width: 1.0)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.apple,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Continuer avec Apple",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Center(
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
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
