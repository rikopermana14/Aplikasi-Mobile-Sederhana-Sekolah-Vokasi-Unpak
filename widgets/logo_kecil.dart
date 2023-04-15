import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoKecilVokasi extends StatelessWidget {
  const LogoKecilVokasi({super.key, this.kecil = false});

  final bool kecil;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Image.asset(
          kecil?
          'assets/logo-orange.png' : 'assets/logo.png',
          width: 72, // lebar gambar
           height: 71, // tinggi gambar
           fit: BoxFit.cover, // tinggi maksimal gambar
          ),
      ],
    );
  }
}