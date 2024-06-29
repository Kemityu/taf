import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/utils/ulis.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

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
                  onPressed: () {},
                  icon: Icon(Icons.all_inbox_sharp),
                  label: Text('All'),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                        AppColors.secondaryColor),
                    foregroundColor: WidgetStateProperty.all<Color>(
                        Colors.white), // Couleur du texte
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.all_inbox_sharp),
                    label: Text('Mariage')),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.all_inbox_sharp),
                    label: Text('Race')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
