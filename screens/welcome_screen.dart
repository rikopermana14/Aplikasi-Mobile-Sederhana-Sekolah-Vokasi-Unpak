
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riko/screens/login_screen.dart';
import 'package:riko/screens/profile_screen.dart';
import 'package:riko/screens/regis_screen.dart';
import 'package:riko/widgets/logo_vokasi.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
         const LogoVokasi(isColored: true,),
           //ruang
           // const SizedBox(height: 153),

            const Spacer(),
           //button Login
           ElevatedButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
            }, 
            child: const Text('Masuk'),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xffEE8301),
              minimumSize: Size(310, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                  )
              ),
              textStyle: GoogleFonts.poppins(
                fontSize: 14
                ),
            ),
            ),
            //ruang
            const SizedBox(height: 17),
            //button Register
           ElevatedButton(
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisScreen()),
            );
            }, 
            child: const Text('Daftar'),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: const Color(0xffEE8301),
              minimumSize: Size(310, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                  )
              ),
              textStyle: GoogleFonts.poppins(
                fontSize: 14),
                side: BorderSide(width: 1.0,color: Color(0xffEE8301))
              ),
            ),
            const Spacer(),
        ]),
        ),
      ),
    );
  }
}