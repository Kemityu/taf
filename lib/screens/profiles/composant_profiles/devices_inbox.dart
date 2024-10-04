import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class devices_inbox extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const devices_inbox(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black87,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title, style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500
                ),
              ),
              Text(
                description,style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w300
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          ),
        ],
      ),
    );
  }
}
