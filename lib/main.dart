import 'package:flutter/material.dart';
import 'package:test_ui/Bottom_Nav_ber.dart';
import 'package:test_ui/ui_file.dart';

void main() {
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'flutter drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,   
      ),
      home:  BottomNavBer(),  
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('this is my home Page'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Welcome to Drawer page !',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
