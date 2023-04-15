import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoVokasi extends StatelessWidget {
  const LogoVokasi({super.key, this.isColored = false,});

  final bool isColored;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Image.asset(
          isColored 
         ? 'assets/logo-orange.png' 
         : 'assets/logo.png'),
          //ruang image dan text
          const SizedBox(height: 25.54,),
          // style text
          Text(
            'Sekolah Vokasi',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: isColored ? const Color(0xff919191) : Colors.white,
            ),
            ),
           Text(
            'Unggul, Mandiri, & Berkarakter',
           style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: isColored ? const Color(0xffB8B8B8) : Colors.white,
              ),
           ),
      ],
    );
  }
}