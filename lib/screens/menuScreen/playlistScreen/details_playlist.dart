import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/screens/menuScreen/bienvenue_screen.dart';
import 'package:taf_app/screens/menuScreen/conferenceScreen/conference_screen.dart';
import 'package:taf_app/screens/menuScreen/homeScreen/home_screen.dart';
import 'package:taf_app/screens/menuScreen/liveScreen/live_screen.dart';
import 'package:taf_app/screens/menuScreen/playlistScreen/navigationplaylist.dart';
import 'package:taf_app/screens/menuScreen/searchScreen/search_screens.dart';
import 'package:taf_app/utils/ulis.dart';

class Detailsplaylistscreen extends StatefulWidget {
  const Detailsplaylistscreen({super.key});
  @override
  State<Detailsplaylistscreen> createState() => _Detailsplaylistscreen();
}

class _Detailsplaylistscreen extends State<Detailsplaylistscreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const Center(child: HomeScreen()),
    const Center(child: LiveScreen()),
    const Center(child: PlaylistScreen()),
    const Center(child: ConferenceScreen()),
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
          child: SizedBox(
            width: 375,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/logo.png'),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_outlined,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchScreens()));
                      },
                      icon: const Icon(
                        Icons.search,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    const CircleAvatar(
                      radius: 12,
                      backgroundImage: AssetImage("assets/images/avatar.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const CircleAvatar(
                    radius: 56,
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'La race de Dieu',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '366k subscribers 582 videos',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Figma is a free design tool for teams who build products together. Born on the Web, Figma helps the entire product more the',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.05,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(39, 39, 39, 1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.notifications_off_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Enregistrer',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.expand_more, // Icône de flèche vers le bas
                          size: 30.0, // Taille de l'icône
                          color: Colors.white, // Couleur de l'icône
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 12),
                        child: Container(
                          height: screenHeight * 0.12,
                          width: screenWidth * 0.40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(39, 39, 39, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 10,
                                bottom: 10,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '12:40',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: screenHeight * 0.12,
                        width: screenWidth * 0.53,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'How to Export Figma \nPrototype to Video',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.white),
                                ),
                                IconButton(
                                  style: ButtonStyle(
                                    iconSize: WidgetStateProperty.all(16.0),
                                    foregroundColor:
                                        WidgetStateProperty.all(Colors.white),
                                  ),
                                  icon: const Icon(Icons.more_vert),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text(
                                '18 watched',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.60)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 12),
                        child: Container(
                          height: screenHeight * 0.12,
                          width: screenWidth * 0.40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(39, 39, 39, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 10,
                                bottom: 10,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '12:40',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: screenHeight * 0.12,
                        width: screenWidth * 0.53,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'How to Export Figma \nPrototype to Video',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.white),
                                ),
                                IconButton(
                                  style: ButtonStyle(
                                    iconSize: WidgetStateProperty.all(16.0),
                                    foregroundColor:
                                        WidgetStateProperty.all(Colors.white),
                                  ),
                                  icon: const Icon(Icons.more_vert),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text(
                                '18 watched',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.60)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 12),
                        child: Container(
                          height: screenHeight * 0.12,
                          width: screenWidth * 0.40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(39, 39, 39, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 10,
                                bottom: 10,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '12:40',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: screenHeight * 0.12,
                        width: screenWidth * 0.53,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'How to Export Figma \nPrototype to Video',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.white),
                                ),
                                IconButton(
                                  style: ButtonStyle(
                                    iconSize: WidgetStateProperty.all(16.0),
                                    foregroundColor:
                                        WidgetStateProperty.all(Colors.white),
                                  ),
                                  icon: const Icon(Icons.more_vert),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text(
                                '18 watched',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.60)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 12),
                        child: Container(
                          height: screenHeight * 0.12,
                          width: screenWidth * 0.40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(39, 39, 39, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 10,
                                bottom: 10,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '12:40',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: screenHeight * 0.12,
                        width: screenWidth * 0.53,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'How to Export Figma \nPrototype to Video',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.white),
                                ),
                                IconButton(
                                  style: ButtonStyle(
                                    iconSize: WidgetStateProperty.all(16.0),
                                    foregroundColor:
                                        WidgetStateProperty.all(Colors.white),
                                  ),
                                  icon: const Icon(Icons.more_vert),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text(
                                '18 watched',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.60)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 12),
                        child: Container(
                          height: screenHeight * 0.12,
                          width: screenWidth * 0.40,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(39, 39, 39, 1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 10,
                                bottom: 10,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '12:40',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: screenHeight * 0.12,
                        width: screenWidth * 0.53,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'How to Export Figma \nPrototype to Video',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.roboto(
                                      fontSize: 16, color: Colors.white),
                                ),
                                IconButton(
                                  style: ButtonStyle(
                                    iconSize: WidgetStateProperty.all(16.0),
                                    foregroundColor:
                                        WidgetStateProperty.all(Colors.white),
                                  ),
                                  icon: const Icon(Icons.more_vert),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text(
                                '18 watched',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: Colors.white.withOpacity(0.60)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 1,
            color: Colors.grey.withOpacity(0.3),
          ),
          Container(
            height: 82,
            child: CustomNavigationBar(
              backgroundColor: AppColors.backgroundColor,
              elevation: 0,
              items: [
                CustomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.white),
                    title: Text(
                      'Home',
                      style: GoogleFonts.roboto(
                          color: AppColors.textColor,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    )),
                CustomNavigationBarItem(
                    icon: Icon(Icons.live_tv, color: Colors.white),
                    title: Text(
                      'Live',
                      style: GoogleFonts.roboto(
                          color: AppColors.textColor,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    )),
                CustomNavigationBarItem(
                    icon: Icon(Icons.playlist_play, color: Colors.white),
                    title: Text(
                      'Playlist',
                      style: GoogleFonts.roboto(
                          color: AppColors.textColor,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    )),
                CustomNavigationBarItem(
                    icon: Icon(Icons.video_library, color: Colors.white),
                    title: Text(
                      'Conference',
                      style: GoogleFonts.roboto(
                          color: AppColors.textColor,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    )),
              ],
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });

                if (index != 2) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BienvenueScreen(_currentIndex),
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
