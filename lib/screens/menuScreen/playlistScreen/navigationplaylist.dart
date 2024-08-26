import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/screens/menuScreen/playlistScreen/otherPlaylistScreen.dart';
import 'package:taf_app/utils/ulis.dart';
import 'package:taf_app/screens/menuScreen/playlistScreen/playlist_screen.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});
  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  int _currentIndex = 0;

  final List<Widget> list = [
    const allPlaylistScreen(),
    const Otherplaylistscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "Playlist",
              style: GoogleFonts.poppins(
                color: AppColors.textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0; // Affiche la page All
                    });
                  },
                  icon: const Icon(Icons.all_inbox_sharp),
                  label: const Text('All'),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                        AppColors.secondaryColor),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1; 
                    });
                  },
                  icon: const Icon(Icons.all_inbox_sharp),
                  label: const Text('Mariage'),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                        const Color.fromRGBO(33, 40, 63, 1)),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  icon: const Icon(Icons.all_inbox_sharp),
                  label: const Text('Race'),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                        const Color.fromRGBO(33, 40, 63, 1)),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: list[_currentIndex],
            ),
          ],
        ),
      ),
    );
  }
}
