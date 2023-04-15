import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riko/screens/detail_screen.dart';
import 'package:riko/screens/pemulih_screen.dart';
import 'package:riko/screens/profile_screen.dart';
import 'package:riko/widgets/logo_kecil.dart';

class Regisbody extends StatelessWidget {
  const Regisbody({
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

    return Container(
      child: Padding(
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
                  Text('Daftar Akun',style: judul,),
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
                      hintText: 'Masukkan alamat email unpak',
                      hintStyle: bold),
                      keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  Text('Kata Sandi ',style: drop,),
                       const SizedBox(height: 8),
                   TextField(
                    decoration: InputDecoration(
                       border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                          color:  Color(0xffEE8301)),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintText: 'Masukkan setidaknya 8 karakter',
                        hintStyle: bold
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  Text('No HP ',style: drop,),
                       const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                          color:  Color(0xffEE8301)),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      hintText: 'Masukkan nomor HP Anda',hintStyle: bold),
                      keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 26),
                  ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailScreen()),
              );
              }, 
              child: const Text('Lanjut'),
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
      ),
    );
  }
}