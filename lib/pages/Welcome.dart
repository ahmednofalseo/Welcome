import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //  تم استخدام استاك لتحديد اماكن الصور

      body: Stack(children: [
        //  مخصص للصوة الرئيسية
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                "asset/icons/chat.svg",
                width: 300,
              ),
            ),
            //  تحديد مسافة بين الصوة والزر
            SizedBox(
              height: 30,
            ),
            //  الزر الخاص بتسجيل الدخول
            ElevatedButton(
              onPressed: () {
                // لتحديد روت صفحة الدخول
                Navigator.pushNamed(context, '/login');
              },
              child: Text("Login"),
              //   استخدام الاستيل لرسم الزر
              style: ButtonStyle(
                  // لتحديد لون الزر
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 183, 138, 206)),
                  // لتحديد حجم الزر
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 80))),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sinup');
              },
              child: Text("sin up"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 183, 138, 206)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 80))),
            ),
          ],
        ),

        Positioned(
          top: 100,
          right: 80,
          left: 80,
          child: Text(
            'Welcome to nofal app',
            style: TextStyle(
              fontFamily: "font",
              fontSize: 20,
            ),
          ),
        ),
        Positioned(
          left: 0,
          child: Image.asset(
            "asset/img/main_top.png",
            width: 120,
          ),
        ),
      ]),
    );
  }
}
