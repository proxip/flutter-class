import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: DrawerWidget(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildMenuItem(Icons.assignment, 'Tasks', () {}),
              SizedBox(width: 20),
              _buildMenuItem(Icons.notifications, 'Notifications', () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData iconData, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100, // Adjust width as needed
        height: 100, // Adjust height as needed
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: Colors.blue, size: 30),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/150'),
                ),
                SizedBox(height: 10),
                Text(
                  'John Doe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.pageview, color: Colors.blue),
                SizedBox(width: 20),
                Text(
                  'Page 1',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page1()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.info, color: Colors.green),
                SizedBox(width: 20),
                Text(
                  'Page 2',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page2()));
            },
          ),
          Divider(),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.settings, color: Colors.orange),
                SizedBox(width: 20),
                Text(
                  'Settings',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
            onTap: () {
              // Add functionality for Settings
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.logout, color: Colors.red),
                SizedBox(width: 20),
                Text(
                  'Logout',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            onTap: () {
              // Add functionality for Logout
            },
          ),
        ],
      ),
    );
  }
}
