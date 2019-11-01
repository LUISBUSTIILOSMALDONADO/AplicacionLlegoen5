import 'package:app_products/src/blocs/provider.dart';
import 'package:flutter/material.dart';


import 'package:app_products/src/pages/login_page.dart';
import 'package:app_products/src/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
      title: 'Productos Aplicación',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login' : (BuildContext context) => LoginPage(),
        'home'  : (BuildContext context) => HomePage(),        
      },
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
      )
    );
  }
}