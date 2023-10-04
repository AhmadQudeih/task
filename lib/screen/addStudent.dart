import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        title: Text('إضافة طالب ',style: GoogleFonts.cairo(
          fontSize: 21,
          color: Color(0xff8B8B8B),
          fontWeight: FontWeight.w600
        ),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Icon(Icons.arrow_forward_ios,color: Color(0xff53A4B1),size: 25,),
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.only(top: 60,right: 45,left: 45),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ListView(


              children: [
              Text('اسم الطالب ',style: GoogleFonts.cairo(
                  fontSize: 14,

                  fontWeight: FontWeight.w600
              ),),
                SizedBox(height: 7,),
                ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Container(
                        height: 37,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff000000).withOpacity(0.1),
                              blurRadius: 20,
                              offset:  Offset(5,10)
                            )
                          ]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none)
                          ),
                        ))),
                SizedBox(height: 35,),
                Text('التخصص',style: GoogleFonts.cairo(
                    fontSize: 14,

                    fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 18,),
                ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Container(
                        height: 37,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.1),
                                  blurRadius: 20,
                                  offset:  Offset(5,10)
                              )
                            ]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none)
                          ),
                        ))),
                SizedBox(height: 23,),
                Text('رقم الهاتف ',style: GoogleFonts.cairo(
                    fontSize: 14,

                    fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 18,),
                ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Container(
                        height: 37,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.1),
                                  blurRadius: 20,
                                  offset:  Offset(5,10)
                              )
                            ]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none)
                          ),
                        ))),
                SizedBox(height: 35,),
                Text('البريد الالكتروني ',style: GoogleFonts.cairo(
                    fontSize: 14,

                    fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 8,),
                ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Container(
                        height: 37,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.1),
                                  blurRadius: 20,
                                  offset:  Offset(5,10)
                              )
                            ]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none)
                          ),
                        ))),
                SizedBox(height: 25,),
                Text('كلمة المرور',style: GoogleFonts.cairo(
                    fontSize: 14,

                    fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 7,),
                ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Container(
                        height: 37,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.1),
                                  blurRadius: 20,
                                  offset:  Offset(5,10)
                              )
                            ]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none)
                          ),
                        ))),
                SizedBox(height: 80,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 85),
                  child: ElevatedButton(onPressed: (){},
                      child: Text('إضافة طالب ',style: GoogleFonts.cairo(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                      ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff53A4B1),
                     minimumSize: Size(0, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),elevation: 10


                    ),
                  ),
                )
            ],),
          ),
        ),
      ),
    ) ;
  }
}
