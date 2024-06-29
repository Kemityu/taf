import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/screens/conference_screen.dart';
import 'package:taf_app/screens/home_screen.dart';
import 'package:taf_app/screens/live_screen.dart';
import 'package:taf_app/screens/playlist_screen.dart';
import 'package:taf_app/utils/ulis.dart';


class BienvenueScreen extends StatefulWidget {
  const BienvenueScreen({super.key});

  @override
  State<BienvenueScreen> createState() => _BienvenueScreenState();
}

class _BienvenueScreenState extends State<BienvenueScreen> {
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
                      onPressed: () {},
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
      body: _tabs[_currentIndex],
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
              },
            ),
          ),
        ],
      ),
    );
  }
}
