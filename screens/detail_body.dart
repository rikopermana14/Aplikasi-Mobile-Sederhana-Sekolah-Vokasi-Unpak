import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riko/screens/pemulih_screen.dart';
import 'package:riko/screens/profile_screen.dart';
import 'package:riko/widgets/logo_kecil.dart';

class Detailbody extends StatelessWidget {
  const Detailbody({
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
    var _value='-1';

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
                  Text('Detail Akun',style: judul,),
                  const SizedBox(height: 31),
                  Text('Nama',style: drop,),
                       const SizedBox(height: 8),
                  TextFormField(
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                          color:  Color(0xffEE8301)),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                      hintText: 'Masukkan nama lengkap Anda',
                      hintStyle: bold),
                  ),
                  const SizedBox(height: 8),
                  Text('Nama Panggilan ',style: drop,),
                       const SizedBox(height: 9),
                   TextField(
                    decoration: InputDecoration(
                       border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),),
                       enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                          color:  Color(0xffEE8301)),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintText: 'Masukkan Nama Panggilan ',
                        hintStyle: bold
                        ),
                  ),
                  const SizedBox(height: 9),
                  Text('NPM ',style: drop,),
                       const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                          color:  Color(0xffEE8301)),
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          ) ,
                      hintText: 'Masukkan NPM Anda',
                      hintStyle: bold),
                      
                      keyboardType: TextInputType.number,
                  ),
                   const SizedBox(height: 9),
                  Text('Program Studi ',style: drop,),
                       const SizedBox(height: 8),
                  DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50)),),
                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                          color:  Color(0xffEE8301)),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                    ),
                    value: _value,
                    items: [
                      DropdownMenuItem(child: Text('Program Studi',style: bold,),value: '-1',),
                      DropdownMenuItem(child: Text('Ilmu Komputer'),value: '1',),
                      DropdownMenuItem(child: Text('Matematika'),value: '2',),
                      DropdownMenuItem(child: Text('Kimia'),value: '3',),
                    ],
                    onChanged: (v){},
                    dropdownColor: Colors.orange,
                    ),
                    const SizedBox(height: 9),
                  Text('Alamat rumah/kost Anda',style: drop,),
                       const SizedBox(height: 8),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                          color:  Color(0xffEE8301)),
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ) ,
                      hintText: 'Masukkan Alamat rumah/kost Anda',
                      hintStyle: bold),
                  ),


                  const SizedBox(height: 26),
                  ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
              }, 
              child: const Text('Daftar'),
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