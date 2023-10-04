import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          Container(
            height: 169,
            color: Colors.cyan,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SvgPicture.asset('images/El3.svg'),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: SvgPicture.asset('images/El2.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16, left: 20, right: 20),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 45),
                          child:  ListTile(
                            leading: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                  Border.all(width: 1, color: Color(0xffFDB71A))),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    'images/person.png',
                                    width: 63,
                                    height: 63,
                                  )),
                            ),
                            title: Text('مرحبا بك',style: GoogleFonts.cairo(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFFFFF),

                            )),
                            subtitle: Text('اسم المشرف',style: GoogleFonts.cairo(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFFFFF),

                            )),
                            trailing: SvgPicture.asset('images/icons/drawer.svg'),
                          )


                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 650,
              padding: EdgeInsets.only(top:80),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)),
                color: Colors.white,
              ),
              child:Column(
                children: [
                  Container(
                    height: 114,
                    width: 192,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xffCE97CB),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 20,
                              spreadRadius: 0,
                              offset: Offset(5, 10),
                              color: Color(0xffCE97CB).withOpacity(0.3)
                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('images/icons/people.svg',width: 69.33 ,height: 52,fit: BoxFit.cover,),
                      ],
                    ),
                  ),
                  SizedBox(height: 11,),
                  Text('الطلاب المسجلين',style: GoogleFonts.cairo(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5E5E5E),

                  ),),
                  SizedBox(height: 26,),
                  Container(
                    height: 114,
                    width: 188,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xffFDB71A),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 20,
                              spreadRadius: 0,
                              offset: Offset(5, 10),
                              color: Color(0xffFDB71A).withOpacity(0.3)
                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('images/icons/task.svg',width: 69.33 ,height: 52,fit: BoxFit.cover,),
                      ],
                    ),
                  ),
                  SizedBox(height: 11,),
                  Text('مهام الطلاب',style: GoogleFonts.cairo(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff5E5E5E),

                  ))
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
