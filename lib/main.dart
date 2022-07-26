import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Welcome.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/sinup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

           initialRoute: '/',
        routes: {

    '/': (context) => const Welcome(),  
    '/login': (context) => const Login(),
    '/sinup': (context) => const Sinup(),
     },
   
   
      
     
    );
  }
}

