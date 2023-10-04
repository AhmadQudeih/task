import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:google_fonts/google_fonts.dart';

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  int _selectedItemPosition = 0;

  @override
  Widget build(BuildContext context) {
    int currentIndex1 =0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

          bottomNavigationBar: CurvedNavigationBar(

          buttonBackgroundColor: Color(0xff53a4b1),
          backgroundColor: Colors.grey.withOpacity(0.2),
          color: Colors.white,
            animationCurve: Curves.easeInOut,



            //  backgroundColor: Colors.blueAccent,
          items: [
            CurvedNavigationBarItem(
              child: Icon(Icons.home),
              labelStyle: TextStyle(
                color: Colors.grey
              ),
              label: 'home',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.search),
              label: 'Search',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.chat_bubble_outline),
              label: 'Chat',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.newspaper),
              label: 'Feed',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.perm_identity),
              label: 'Personal',
            ),
          ],
          onTap: (index) {
            // Handle button tap
          },
        ),

        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150),
              child: ListView(
                children: [
                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 0,
                        mainAxisExtent: 225,
                        //    childAspectRatio: 0.7,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image(
                              image: AssetImage('image/img.png'),
                              width: 120,
                              height: 120,
                            ),
                            Text('اسم الطالب')
                          ],
                        );
                      }),
                ],
              ),
            ),
            Container(
              height: 150,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.line_weight_outlined,
                        ),
                        Text(
                          'الطلاب',
                          style: GoogleFonts.cairo(
                              fontSize: 18, color: Colors.grey),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'الطلاب',
                        style: GoogleFonts.cairo(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
