import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/utils/ulis.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Nos évènements à venir",
              style: GoogleFonts.poppins(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                width: 343,
                height: 117,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Notre sélection pour vous",
              style: GoogleFonts.poppins(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 164,
                  height: 212,
                   child: Column(
                      children: [
                        Image.asset('assets/images/Album1.png', height: 164, width: 164,),
                        SizedBox(height: 2),
                        Text('Guitar Camp', style: GoogleFonts.roboto(color: AppColors.textColor, fontSize: 17),),
                      ],
                    )
                ),
                Container(
                  width: 164,
                  height: 212,
                   child: Column(
                      children: [
                        Image.asset('assets/images/Album2.png'),
                        SizedBox(height: 2),
                        Text('Chill-hop', style: GoogleFonts.roboto(color: AppColors.textColor, fontSize: 17),),
                      ],
                    )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 164,
                    height: 212,
                    child: Column(
                      children: [
                        Image.asset('assets/images/Album3.png'),
                        SizedBox(height: 2),
                        Text('Pack name', style: GoogleFonts.roboto(color: AppColors.textColor, fontSize: 17),),
                      ],
                    )),
                Container(
                  width: 164,
                  height: 212,
                   child: Column(
                      children: [
                        Image.asset('assets/images/Album4.png'),
                        SizedBox(height: 2),
                        Text('Pack name', style: GoogleFonts.roboto(color: AppColors.textColor, fontSize: 17),),
                      ],
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
