// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class Sinup extends StatelessWidget {
  const Sinup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
             body: 
             Stack(children: [
        //  مخصص للصوة الرئيسية
        Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                "asset/icons/signup.svg",
                width: 100,
                height: 200,
              ),
            ),
            //  تحديد مسافة بين الصوة والزر
            SizedBox(
              height: 30,
            ),

              Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 224, 207, 234),
                  borderRadius: BorderRadius.circular(10)),
              // ignore: prefer_const_constructors
              child: TextField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 193, 64, 205),
                      size: 20,
                    ),
                    hintText: "USER NAME :"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //  خانة الايميل
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 224, 207, 234),
                  borderRadius: BorderRadius.circular(10)),
              // ignore: prefer_const_constructors
              child: TextField(
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
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
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "_____________",
                  style: TextStyle(
                      color: Color.fromARGB(255, 68, 35, 71),
                      fontFamily: "font"),
                ),Text(
                  "or",
                  style: TextStyle(
                      color: Color.fromARGB(255, 68, 35, 71),
                      fontFamily: "font"),
                ),
                Text(
                  "_____________",
                  style: TextStyle(
                      color: Color.fromARGB(255, 68, 35, 71),
                      fontFamily: "font"),
                ),
               
              ],
            ),
               SizedBox(
                height: 30,
               ), 
       Center(
         child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                 Container(
                height: 40,
                width: 40,
            decoration:BoxDecoration(
               border: Border.all(color: Colors.grey,width: 1),
                shape: BoxShape.circle

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("asset/icons/facebook.svg",
              color:Color.fromARGB(255, 68, 35, 71),
              ),
            ),
            ),
           
            SizedBox(
              width: 20,
            ),
           Container(
                height: 40,
                width: 40,
            decoration:BoxDecoration(
               border: Border.all(color: Colors.grey,width: 1),
                shape: BoxShape.circle

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("asset/icons/facebook.svg",
              color:Color.fromARGB(255, 68, 35, 71),
              
              ),
            ),
            ),
          SizedBox(
              width: 20,
            ),
           Container(
                height: 40,
                width: 40,
            decoration:BoxDecoration(
               border: Border.all(color: Colors.grey,width: 1),
                shape: BoxShape.circle

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("asset/icons/facebook.svg",
              color:Color.fromARGB(255, 68, 35, 71),
              ),
            ),
            ),
           
         
          ],
         ),
       ),
          
        
          ],

        ),
    

        Positioned(
          top: 100,
          right: 180,
          child: Text(
            'SINUP',
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
