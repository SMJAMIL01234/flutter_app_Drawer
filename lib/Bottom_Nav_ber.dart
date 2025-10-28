import 'package:flutter/material.dart';
import 'package:test_ui/about_page.dart';
import 'package:test_ui/settings_page.dart';
import 'package:test_ui/ui_file.dart';

class BottomNavBer extends StatefulWidget {
  const BottomNavBer({super.key});

  @override
  State<BottomNavBer> createState() => BottomNavBerState();
}

class BottomNavBerState extends State<BottomNavBer> {
  int _selectedPage = 0;

  List<Widget> pages = [AboutPage(), SettingsPage(), Ui_File()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[_selectedPage],

      bottomNavigationBar: BottomNavigationBar(
        
        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.info),
             label: 'About'),


          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
             label: 'Ui_File'),
        ],

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,

        //backgroundColor:Colors.blueGrey,
         

        currentIndex: _selectedPage,
        onTap: (index) {
          setState(() {
            _selectedPage=index;
          });
        },
      ),
    );
  }
}
