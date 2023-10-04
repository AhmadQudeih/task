import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  var _bottomNavIndex = 0;

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
              child: SvgPicture.asset('image/Vector.svg'),
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
            child: SvgPicture.asset('image/Group 1.svg'),
          ),
        ),
        leadingWidth: 0,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'البروفايل'),
      //     BottomNavigationBarItem(icon: Icon(Icons.image), label: 'معرض'),
      //     BottomNavigationBarItem(icon: Icon(Icons.camera), label: 'تصنيفات'),
      //   ],
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.withOpacity(0.2),
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.person),
            label: ' البروفايل ',
            labelStyle: GoogleFonts.cairo(
              color: Color(0xFF737373),
              fontSize: 7,
              fontWeight: FontWeight.w700,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.person),
            label: ' الطلاب',
            labelStyle: GoogleFonts.cairo(
              color: Color(0xFF737373),
              fontSize: 7,
              fontWeight: FontWeight.w700,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.home_max_rounded),

            label: 'مهام الطلاب',
            labelStyle: GoogleFonts.cairo(
              color: Color(0xFF737373),
              fontSize: 7,
              fontWeight: FontWeight.w700,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.home_max_rounded),
            label: 'الرئيسية',
            labelStyle: GoogleFonts.cairo(
              color: Color(0xFF737373),
              fontSize: 7,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
        buttonBackgroundColor: Color(0xff53a4b1),
        height: 50,
        iconPadding: 15,
        color: Colors.white,
        onTap: (index) {
          // Handle button tap
        },
      ),
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