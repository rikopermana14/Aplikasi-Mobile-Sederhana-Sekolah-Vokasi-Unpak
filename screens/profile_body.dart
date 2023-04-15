import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBodyScreen extends StatelessWidget {
  const ProfileBodyScreen({
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
                      fontSize: 12,
                      color: const Color(0xff484848),
                      fontWeight: FontWeight.normal,
                      );
    var dropgrey =  GoogleFonts.poppins(
                      fontSize: 12,
                      color: const Color(0xff484848),
                      fontWeight: FontWeight.w600,
                      );
    var bold =  GoogleFonts.poppins(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      );

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
          Container(
            
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 15,
                  offset: Offset(0, 4)
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Color(0xffEE8301)
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/foto.jpeg'),
              radius: 50,
            ),
          ),
          Spacer(),
          Text('Riko Permana', style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: const Color(0xff484848),
              ),),
          Text('065120032@student.unpak.ac.id',style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: const Color(0xff8B8B8B),
                ),
                ),
          Text('0895110014498',
          style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: const Color(0xff8B8B8B),
                ),
                ),
               Spacer(),
                Container(
                  decoration:const BoxDecoration(
                    color: Color(0xffEE8301),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ) ,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  padding: const EdgeInsets.all(10),
                  child: Column(children: [
                    Row(
                      children: [
                        Text('NPM',
                        style:
                        Textcard,
                        ),
                        const Spacer(),
                        Text('065120032',
                        style:
                        bold,),
                        const SizedBox(width: 9,),
                        const Icon(Icons.copy,color: Colors.white,size: 18,),
                      ],
                    ),
                    const Divider(color: Colors.white,),
                    Row(
                      children: [
                        Text('Status Keaktifan',style:
                        Textcard,),
                        const Spacer(),
                        Text('Aktif',style:
                        bold,),
                      ],
                    ),
                    const Divider(color: Colors.white,),
                    Row(
                      children: [
                        Text('Program Studi',style:
                        Textcard, ),
                        const Spacer(),
                        Text('Ilmu Komputer',style:
                        bold,),
                      ],
                    ),
                    const Divider(color: Colors.white,),
                    Row(
                      children: [
                        Text('jenjang Pendidikan',style:
                        Textcard,),
                        const Spacer(),
                        Text('S1',style:
                        bold,),
                      ],
                    ),
                  ]),
                ),
               Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12),
                  child: Row(children: [
                     Text('Nama Lengkap',style: drop,),
                    const Spacer(),
                     Text('Riko Permana',style: dropgrey,),
                  ],),
                ),
                const Divider(color: Color(0xffEE8301),),
                Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12),
                  child: Row(children:  [
                     Text('Panggilan',style: drop,),
                    const Spacer(),
                     Text('Riko',style: dropgrey,),
                  ],),
                ),
                const Divider(color: Color(0xffEE8301),),
                Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                    Text('Alamat Rumah',style: drop,),
                    SizedBox(height: 6,),
                    Text('Ciomas Permai Jln Harmoni 6 blok b14 no 14 A Bogor',style: dropgrey,),
                  ],),
                ),
                const Divider(color: Color(0xffEE8301),),
                Padding(
                  padding: const EdgeInsets.only(left: 12,right: 12),
                  child: Row(children:  [
                     Text('Kartu Mahasiswa',style: drop,),
                    const Spacer(),
                    const Icon(Icons.badge)
                  ],),
                ),
                Spacer(),
                const SizedBox(height: 26),
        ],
      ),
      ),
    );
  }
}