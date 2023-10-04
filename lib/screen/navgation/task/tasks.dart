import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'المهام',
          style: GoogleFonts.cairo(
            color: Color(0xFF717171),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 1),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              child: SvgPicture.asset('assets/icons/Vector.svg'),
            ),
          ),
        ],
        leading: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          child: Container(
            child: SvgPicture.asset('assets/icons/Group 1.svg'),
          ),
        ),
        leadingWidth: 90,
      ),
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(bottom: 110.0),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff53a4b1),
          child: Icon(Icons.add,size: 40),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.grey.withOpacity(0.2),
      //   items: [
      //     CurvedNavigationBarItem(
      //       child: Icon(Icons.person),
      //       label: 'مهام الطلاب',
      //       labelStyle: GoogleFonts.cairo(
      //         color: Color(0xFF737373),
      //         fontSize: 7,
      //         fontWeight: FontWeight.w700,
      //       ),
      //     ),
      //     CurvedNavigationBarItem(
      //       child: Icon(Icons.person),
      //       label: 'مهام الطلاب',
      //       labelStyle: GoogleFonts.cairo(
      //         color: Color(0xFF737373),
      //         fontSize: 7,
      //         fontWeight: FontWeight.w700,
      //       ),
      //     ),
      //     CurvedNavigationBarItem(
      //       child: SvgPicture.asset('assets/icons/Vector.svg'),
      //       label: 'البروفايل',
      //       labelStyle: GoogleFonts.cairo(
      //         color: Color(0xFF737373),
      //         fontSize: 7,
      //         fontWeight: FontWeight.w700,
      //       ),
      //     ),
      //     CurvedNavigationBarItem(
      //       child: Icon(Icons.home),
      //       label: 'مهام الطلاب',
      //       labelStyle: GoogleFonts.cairo(
      //         color: Color(0xFF737373),
      //         fontSize: 7,
      //         fontWeight: FontWeight.w700,
      //       ),
      //     ),
      //   ],
      //   buttonBackgroundColor: Color(0xff53a4b1),
      //   height: 50,
      //   iconPadding: 15,
      //   color: Colors.white,
      //   onTap: (index) {
      //     // Handle button tap
      //   },
      // ),
      body: Container(
        margin: EdgeInsets.only(left: 43, right: 43, top: 68),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  height: 103,
                  decoration: ShapeDecoration(
                    color: Color(0xFF53A4B1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 20,
                        offset: Offset(5, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 13,
                  left: 23,
                  child: Text(
                    '12/11/2022',
                    style: GoogleFonts.cairo(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  top: 23,
                  right: 17,
                  child: Text(
                    'عنوان المهمة',
                    style: GoogleFonts.cairo(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 25,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFCE97CB),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: Size(71, 19),
                    ),
                    child: Text(
                      'تفاصيل المهمة',
                      style: GoogleFonts.cairo(
                        color: Color(0xFFF9F9F9),
                        fontSize: 7,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 20);
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
