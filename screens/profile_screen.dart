import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riko/screens/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil',style: GoogleFonts.poppins(
          color: const Color(0x95484848),
          fontWeight: FontWeight.w600,
        )),
        leading: 
          IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        ],
        centerTitle: false,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff484848),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: const ProfileBodyScreen(),
    );
        
  }
}

