import 'package:flutter/material.dart';

class Ui_File extends StatefulWidget {
  const Ui_File({super.key});

  @override
  State<Ui_File> createState() => _UiFileState();
}

class _UiFileState extends State<Ui_File> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Custom Drawer page!"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.teal),
              currentAccountPicture: const CircleAvatar(
  
               // child: FlutterLogo(size: 50.0,),
              backgroundImage: AssetImage('assets/images/SMJAMIL.png'),
              ),

              accountName: const Text(
                "SM JAMIL",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),

              accountEmail: const Text("SMJAMILUDDIN123@gmail.com"),
            ),

            // Drawer Menu List
            ListTile(
              leading: const Icon(Icons.home, color: Colors.blueAccent),
              title: const Text("Home"),
               trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.blueAccent),
              title: const Text("Profile"),
                 trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                 Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.blueAccent),
              title: const Text("Settings"),
                 trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                 Navigator.pop(context);
              },
            ),
            
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.redAccent),
              title: const Text("Logout"),
                trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                 Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
 
    
  }
}
