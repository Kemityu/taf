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
                  Text(
                    'Figma is a free design tool for teams who build products together. Born on the Web, Figma helps the entire product more the',
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 351,
                    height: 42,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(39, 39, 39, 1),
                      borderRadius: BorderRadius.circular(16),
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
                        )
                      ],
                    ),
                  )
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
