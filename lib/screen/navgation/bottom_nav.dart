import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../login.dart';
import 'Homepage/Homepage.dart';
import 'Profile/Profile.dart';

class bottomNavgation extends StatefulWidget {
  const bottomNavgation({super.key});

  @override
  State<bottomNavgation> createState() => _bottomNavgationState();
}

class _bottomNavgationState extends State<bottomNavgation> {


  int index = 2;

  List scrren = [Profile() , Login() , Homepage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: scrren[index],
      extendBody: true,

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26.withOpacity(0.1),
                  blurRadius: 6,
                  offset: Offset(0,1)
              )
            ]
        )
        ,
        child: CurvedNavigationBar(
          items: [
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: SvgPicture.asset('images/icons/perNav.svg',width: 20,height: 19,),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: SvgPicture.asset('images/icons/peoplNav.svg',width: 28,height: 21,),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: SvgPicture.asset('images/icons/taskNav.svg',width: 21,height: 21,),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: SvgPicture.asset('images/icons/home.svg',width: 21,height: 21,color: Color(0xffEAEAEA),),
            ),
          ],
          index: index,
          onTap: (selctedIndex){
            setState(() {
              index = selctedIndex;
            });
          },
          height: 70,
          buttonBackgroundColor: Color(0xff53A4B1),
          backgroundColor: Colors.transparent,
          animationDuration: const Duration(milliseconds: 300),
          // animationCurve: ,
        ),
      ),
    );
  }
}
