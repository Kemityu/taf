import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/screens/menuScreen/conferenceScreen/conference_screen.dart';
import 'package:taf_app/screens/menuScreen/homeScreen/home_screen.dart';
import 'package:taf_app/screens/menuScreen/liveScreen/live_screen.dart';
import 'package:taf_app/screens/menuScreen/playlistScreen/navigationplaylist.dart';
import 'package:taf_app/screens/menuScreen/searchScreen/search_screens.dart';
import 'package:taf_app/screens/profiles/profiles_screen.dart';
import 'package:taf_app/utils/ulis.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BienvenueScreen extends StatefulWidget {
  final int currentIndex;

  const BienvenueScreen(this.currentIndex, {super.key});

  @override
  State<BienvenueScreen> createState() => _BienvenueScreenState();
}

class _BienvenueScreenState extends State<BienvenueScreen> {
  late int _currentIndex;

  final List<Widget> _tabs = [
    const Center(child: HomeScreen()),
    const Center(child: LiveScreen()),
    const Center(child: PlaylistScreen()),
    const Center(child: ConferenceScreen()),
  ];

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
  }

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
            width: screenWidth * 1, 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/logo.png'),
                Row(
                  children: [
                  
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
                    const SizedBox(width: 10,),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profiles()));
                      },
                      icon: FaIcon(FontAwesomeIcons.circleUser, size: 24, color: Colors.white, )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      extendBody: true,
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
