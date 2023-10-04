import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskDetails2 extends StatefulWidget {
  const TaskDetails2({super.key});

  @override
  State<TaskDetails2> createState() => _TaskDetails2State();
}

class _TaskDetails2State extends State<TaskDetails2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'تفاصيل المهمة',
          style: GoogleFonts.cairo(
            color: Color(0xFF717171),
            fontSize: 21,
            fontWeight: FontWeight.w600,
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
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 27, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // عنوان المهمة
              Text(
                'عنوان المهمة',
                style: GoogleFonts.cairo(
                  color: Color(0xFF272727),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              // الوصف
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 26),
                    padding: EdgeInsets.only(
                        right: 20, left: 22, bottom: 19, top: 6),
                    decoration: ShapeDecoration(
                      color: Color(0xFF53A4B1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    height: 107,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'الوصف',
                              style: GoogleFonts.cairo(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline),
                            ),
                            Spacer(),
                            Text(
                              '11/12/2022',
                              style: GoogleFonts.cairo(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف وصف  ',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.cairo(
                            color: Colors.white,
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 26,
                    left: 0,
                    child: SvgPicture.asset('image/Ellipse 72.svg'),
                  ),
                ],
              ),
              // تاريخ المهمة + تاريخ التسليم
              ListView.separated(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 18),
                    padding: EdgeInsets.only(left: 29, right: 20),
                    height: 34,
                    decoration: ShapeDecoration(
                      color: Color(0xFF53A4B1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'تاريخ المهمة',
                          style: GoogleFonts.cairo(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '11/6/2022',
                          style: GoogleFonts.cairo(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 0);
                },
              ),
              // مرفقات
              Container(
                margin: EdgeInsets.only(top: 32, bottom: 29),
                child: Text(
                  'مرفقات',
                  style: GoogleFonts.cairo(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 83,
                        height: 34,
                        decoration: ShapeDecoration(
                          color: Color(0xFF53A4B1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'مرفق 1',
                            style: GoogleFonts.cairo(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 0,
                        ),
                        child: Text(
                          'تنزيل',
                          style: GoogleFonts.cairo(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 0);
                },
              ),
              // تسليم الملف
              Container(
                margin: EdgeInsets.only(top: 63, bottom: 30),
                child: Text(
                  'تسليم الملف',
                  style: GoogleFonts.cairo(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    // اضافة مرفقات
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfffdb71a),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(128, 31),
                      ),
                      child: SizedBox(
                        width: 128,
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.only(left: 7),
                                width: 25.38,
                                height: 21,
                                child: Image.asset(
                                  'image/add-button.png',
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                )),
                            Text(
                              'اضافة مرفقات',
                              style: GoogleFonts.cairo(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // تسليم المهمة
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xfffdb71a),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(128, 31),
                      ),
                      child: SizedBox(
                        width: 128,
                        child: Center(
                          child: Text(
                            'تسليم المهمة',
                            style: GoogleFonts.cairo(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}