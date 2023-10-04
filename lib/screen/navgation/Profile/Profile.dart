import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../login.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: Colors.cyan,
        height: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 169,
                  color: Colors.cyan,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SvgPicture.asset('images/El1.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 41, left: 33, right: 27),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 45),
                              child: Row(
                                children: [
                                  InkWell(
                                    child: Icon(
                                      Icons.arrow_back_ios_outlined,
                                      color: Color(0xffFFFFFF),
                                    ),
                                    onTap: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Login()));
                                    },
                                  ),
                                  Spacer(),
                                  Text(
                                    'الملف الشخصي',
                                    style: GoogleFonts.cairo(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffFFFFFF)),
                                  ),
                                  Spacer(),
                                  SvgPicture.asset('images/icons/drawer.svg')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(top:175),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50)),
                      color: Colors.white,
                    ),

                    child:Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        children: [
                          Align(alignment: Alignment.centerRight,
                            child:Text(
                              ''' البريد الالكتروني ''',
                              style: GoogleFonts.cairo(
                                  fontSize: 10,
                                  color: Color(0xffB0B0B0),
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                          ,
                          SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26.withOpacity(0.1),
                                      blurRadius: 6,
                                      offset: Offset(0,1)
                                  )
                                ]
                            ),
                            height: 60,
                            width: 350,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: TextField(

                                style: TextStyle(
                                    color: Colors.black87
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 14),

                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 24,),
                          Align(alignment: Alignment.centerRight,
                            child:Text(
                              '''رقم الهاتف''',
                              style: GoogleFonts.cairo(
                                  fontSize: 10,
                                  color: Color(0xffB0B0B0),
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                          ,
                          SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black26.withOpacity(0.1),
                                      blurRadius: 6,
                                      offset: Offset(0,1)
                                  )
                                ]
                            ),
                            height: 60,
                            width: 350,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: TextField(

                                style: TextStyle(
                                    color: Colors.black87
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(top: 14),

                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 122,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 144,
                      width: 289,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          color: Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 0,
                                color: Color(0xff000000).withOpacity(0.1),
                                offset: Offset(0, 4))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.only(top: 71),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'اسم المشرف',
                            style: GoogleFonts.cairo(
                                fontSize: 17,
                                color: Color(0xff53A4B1),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Positioned(
              top: 78,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 111,
                    height: 111,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            width: 5,
                            color: Color(0xffFDB71A).withOpacity(0.33))),
                    child: Container(
                      width: 101,
                      height: 101,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                          Border.all(width: 2, color: Color(0xffFDB71A))),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'images/person.png',
                            width: 63,
                            height: 63,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
