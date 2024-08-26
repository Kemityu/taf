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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Nos évènements à venir",
              style: GoogleFonts.roboto(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Ajout de cette ligne
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Réveil de décembre',
                                style: GoogleFonts.lato(
                                  color: AppColors.textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Abidjan',
                                style: GoogleFonts.lato(
                                  color: AppColors.textColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 20),
                        child: Image.asset(
                          'assets/images/bro.png',
                          width: 164.85,
                          height: 100.55,
                        ),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Notre sélection pour vous",
              style: GoogleFonts.roboto(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Column(
                children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 164,
                      height: 212,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                'assets/images/Album1.png',
                                height: 164,
                                width: 164,
                              ),
                              Positioned(
                                left: 8,
                                top: 8,
                                child: CircleAvatar(
                                  backgroundColor: AppColors.backgroundColor
                                      .withOpacity(0.72),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.play_arrow_sharp,
                                          color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Guitar Camp',
                            style: GoogleFonts.roboto(
                                color: AppColors.textColor,
                                fontSize: 17,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      )),
                  Container(
                      width: 164,
                      height: 212,
                      child: Column(
                        children: [
                          Stack(children: [
                            Image.asset('assets/images/Album2.png'),
                            Positioned(
                              left: 8,
                              top: 8,
                              child: CircleAvatar(
                                backgroundColor:
                                    AppColors.backgroundColor.withOpacity(0.72),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.play_arrow_sharp,
                                        color: Colors.white)),
                              ),
                            ),
                          ]),
                          const SizedBox(height: 2),
                          Text(
                            'Chill-hop',
                            style: GoogleFonts.roboto(
                                color: AppColors.textColor,
                                fontSize: 17,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ))
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
                          Stack(children: [
                            Image.asset('assets/images/Album3.png'),
                            Positioned(
                              left: 8,
                              top: 8,
                              child: CircleAvatar(
                                backgroundColor:
                                    AppColors.backgroundColor.withOpacity(0.72),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.play_arrow_sharp,
                                        color: Colors.white)),
                              ),
                            ),
                          ]),
                          const SizedBox(height: 2),
                          Text(
                            'Pack name',
                            style: GoogleFonts.roboto(
                                color: AppColors.textColor,
                                fontSize: 17,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      )),
                  Container(
                      width: 164,
                      height: 212,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset('assets/images/Album4.png'),
                              Positioned(
                                left: 8,
                                top: 8,
                                child: CircleAvatar(
                                  backgroundColor: AppColors.backgroundColor
                                      .withOpacity(0.72),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.play_arrow_sharp,
                                          color: Colors.white)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'Pack name',
                            style: GoogleFonts.roboto(
                                color: AppColors.textColor,
                                fontSize: 17,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ))
                ],
              ),
                ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
