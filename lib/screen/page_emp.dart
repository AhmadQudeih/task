import 'package:flutter/material.dart';

class Page_emp extends StatefulWidget {
  const Page_emp({super.key});

  @override
  State<Page_emp> createState() => _Page_empState();
}

class _Page_empState extends State<Page_emp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          title: Text(
            ' الطالب ',
            style: TextStyle(
                fontSize: 21,
                color: Color(0xff8B8B8B),
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Color(0xff53A4B1),
                size: 25,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFFFFFFFF),
        body: Container(
            child: Column(children: [
              SizedBox(height: 10,),
              Container(

                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 2, color: Color(0xFFFDB71A)),
                ),
                child: Image.asset(
                  'image/img_1.png',
                  width: 22,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child:
                        Text('الاسم', style: TextStyle(fontSize: 17)),
                      ),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              )
                            ]
                        ),
                        child: TextField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress,

                          decoration: InputDecoration(
                              fillColor: Color(0xFFFFFFFF),
                              filled: true,
                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xFFEFF2F5))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Color(0xCF12111C)),
                              )

                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child:
                        Text('التخصص', style: TextStyle(fontSize: 17)),
                      ),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              )
                            ]
                        ),
                        child: TextField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress,

                          decoration: InputDecoration(
                              fillColor: Color(0xFFFFFFFF),
                              filled: true,

                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xFFEFF2F5))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Color(0xCF12111C)),
                              )

                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child:
                        Text('رقم الهاتف', style: TextStyle(fontSize: 17)),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              )
                            ]
                        ),
                        child: TextField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress,

                          decoration: InputDecoration(
                              fillColor: Color(0xFFFFFFFF),
                              filled: true,

                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xFFEFF2F5))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Color(0xCF12111C)),
                              )

                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child:
                        Text('البريد الالكتروني', style: TextStyle(fontSize: 17)),
                      ),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              )
                            ]
                        ),
                        child: TextField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress,

                          decoration: InputDecoration(
                              fillColor: Color(0xFFFFFFFF),
                              filled: true,
                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: Color(0xFFEFF2F5))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: Color(0xCF12111C)),
                              )

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            ),
        );
    }
}
