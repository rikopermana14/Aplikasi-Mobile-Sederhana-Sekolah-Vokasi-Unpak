import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riko/screens/pemulih_screen.dart';
import 'package:riko/screens/profile_screen.dart';
import 'package:riko/widgets/logo_kecil.dart';

class pemulihbody extends StatelessWidget {
  const pemulihbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var Textcard =  GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      );
    var drop =  GoogleFonts.poppins(
                      fontSize: 13,
                      color: const Color(0xff484848),
                      );
    var judul =  GoogleFonts.poppins(
                      fontSize: 24,
                      color: const Color(0xff484848),
                      fontWeight: FontWeight.bold,
                      );
    var bold =  GoogleFonts.poppins(
                      fontSize: 13,
                      color: const Color(0xff919191),
                      );

    return Padding(
      padding: const EdgeInsets.all(10.0),
        child:SingleChildScrollView(
        child: Column(
          children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const LogoKecilVokasi(kecil: true,),
              const SizedBox(height: 26,),
                Text('Pemulihan Kata Sandi',style: judul,),
                const SizedBox(height: 31),
                Text('Alamat Email',style: drop,),
                     const SizedBox(height: 8),
                TextFormField(
                  decoration:  InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                          color:  Color(0xffEE8301)),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                    hintText: 'Masukkan alamat email akun Anda',hintStyle: bold),
                    keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 18),
                Text('Kata sandi baru akan dikirimkan ke alamat email Anda ',style: drop,),

                const SizedBox(height: 26),
                ElevatedButton(
            onPressed: () { }, 
            child: const Text('Kirim'),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xffEE8301),
              minimumSize: const Size(310, 40),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                  )
              ),
              textStyle: GoogleFonts.poppins(
                fontSize: 14
                ),
            ),
            ),

              ]
            ),
              ),
          ]
        )
      ),
    );
  }
}