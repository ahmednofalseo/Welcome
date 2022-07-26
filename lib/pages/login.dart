// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        //  مخصص للصوة الرئيسية
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                "asset/icons/login.svg",
                width: 100,
                height: 200,
              ),
            ),
            //  تحديد مسافة بين الصوة والزر
            SizedBox(
              height: 30,
            ),
            //  خانة الايميل
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 224, 207, 234),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 193, 64, 205),
                      size: 20,
                    ),
                    hintText: "Emeil :"),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //  خانة الباسورد

            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 224, 207, 234),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                obscureText: true,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Color.fromARGB(255, 193, 64, 205),
                      size: 20,
                    ),
                    hintText: "your password",
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Color.fromARGB(255, 193, 64, 205),
                    )),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //  الزر الخاص بتسجيل الدخول
            ElevatedButton(
              onPressed: () {},
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
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont have an Acount ?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 68, 35, 71),
                      fontFamily: "font"),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "sinup",
                      style: TextStyle(
                          color: Color.fromARGB(255, 68, 35, 71),
                          fontFamily: "font"),
                    )),
              ],
            )
          ],
        ),

        Positioned(
          top: 100,
          right: 180,
          child: Text(
            'LOGIN',
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
