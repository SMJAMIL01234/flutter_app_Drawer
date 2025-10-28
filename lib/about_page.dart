import 'package:flutter/material.dart';

class  AboutPage extends StatefulWidget {
  const  AboutPage({super.key});

  @override
  State< AboutPage> createState() => AboutPageState();
}

class  AboutPageState extends State< AboutPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: Text( "About"),
        
       ),
       body: Container(
        child: Center(child: Text("About"),
        ),
       ),
    );
  }
}