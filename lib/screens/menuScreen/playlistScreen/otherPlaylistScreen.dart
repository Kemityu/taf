import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/utils/ulis.dart';

class Otherplaylistscreen extends StatelessWidget {
  const Otherplaylistscreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 164,
                        height: 214,
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
                                      icon: const Icon(Icons.play_arrow_sharp,
                                          color: Colors.white),
                                    ),
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
                            Text(
                              '7 vidéos • Instrumental',
                              style: GoogleFonts.roboto(
                                  color: AppColors.textColor.withOpacity(0.6),
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 164,
                        height: 214,
                        child: Column(
                          children: [
                            Stack(children: [
                              Image.asset('assets/images/Album2.png'),
                              Positioned(
                                left: 8,
                                top: 8,
                                child: CircleAvatar(
                                  backgroundColor: AppColors.backgroundColor
                                      .withOpacity(0.72),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.play_arrow_sharp,
                                        color: Colors.white),
                                  ),
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
                            Text(
                              '7 vidéos • Instrumental',
                              style: GoogleFonts.roboto(
                                  color: AppColors.textColor.withOpacity(0.6),
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 164,
                        height: 214,
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
                                      icon: const Icon(Icons.play_arrow_sharp,
                                          color: Colors.white),
                                    ),
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
                            Text(
                              '4 Hours • Category name',
                              style: GoogleFonts.roboto(
                                  color: AppColors.textColor.withOpacity(0.6),
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 164,
                        height: 214,
                        child: Column(
                          children: [
                            Stack(children: [
                              Image.asset('assets/images/Album2.png'),
                              Positioned(
                                left: 8,
                                top: 8,
                                child: CircleAvatar(
                                  backgroundColor: AppColors.backgroundColor
                                      .withOpacity(0.72),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.play_arrow_sharp,
                                        color: Colors.white),
                                  ),
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
                            Text(
                              '4 Hours • Category name',
                              style: GoogleFonts.roboto(
                                  color: AppColors.textColor.withOpacity(0.6),
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height:16),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 164,
                        height: 214,
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
                                      icon: const Icon(Icons.play_arrow_sharp,
                                          color: Colors.white),
                                    ),
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
                            Text(
                              '7 vidéos • Instrumental',
                              style: GoogleFonts.roboto(
                                  color: AppColors.textColor.withOpacity(0.6),
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 164,
                        height: 214,
                        child: Column(
                          children: [
                            Stack(children: [
                              Image.asset('assets/images/Album2.png'),
                              Positioned(
                                left: 8,
                                top: 8,
                                child: CircleAvatar(
                                  backgroundColor: AppColors.backgroundColor
                                      .withOpacity(0.72),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.play_arrow_sharp,
                                        color: Colors.white),
                                  ),
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
                            Text(
                              '7 vidéos • Instrumental',
                              style: GoogleFonts.roboto(
                                  color: AppColors.textColor.withOpacity(0.6),
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );}
}
