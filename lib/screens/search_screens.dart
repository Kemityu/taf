import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taf_app/utils/ulis.dart';

class SearchScreens extends StatelessWidget {
  const SearchScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            hintText: 'Rechercher un enseignement',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: AppColors.backgroundColor,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.mic, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.rotate_90_degrees_ccw, color: Colors.white,)),
                Text('Osiris ou Jesus Christ',style: GoogleFonts.roboto(color: AppColors.textColor, fontWeight: FontWeight.w500, fontSize: 16),),
                Icon(Icons.arrow_outward, color: Colors.white,)
              ],
            ),
             const SizedBox(height: 15),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                child:Icon(Icons.rotate_90_degrees_ccw, color: Colors.white,)),
                Text('similitude  entre Osiris',style: GoogleFonts.roboto(color: AppColors.textColor, fontWeight: FontWeight.w500, fontSize: 16),),
                Icon(Icons.arrow_outward, color: Colors.white,)
              ],
            ),
            const SizedBox(height: 15),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Padding(
                  padding: EdgeInsets.only(left: 10),
                child:Icon(Icons.rotate_90_degrees_ccw, color: Colors.white,)),
                Text('La race',style: GoogleFonts.roboto(color: AppColors.textColor, fontWeight: FontWeight.w500, fontSize: 16),),
                Icon(Icons.arrow_outward, color: Colors.white,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
