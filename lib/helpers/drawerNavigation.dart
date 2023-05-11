import 'package:flutter/material.dart';
import 'package:to_do_app/screens/home_screen.dart';

import '../screens/categories.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-vector/orange-blue-background-list_23-2149020601.jpg?w=2000'),
              ), //Take image address not image url
              accountName: Text('Pd'),
              accountEmail: Text('pd@gmail.com'),
              decoration: BoxDecoration(color: Colors.red.shade200),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HomeScreen()))),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('categories'),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CategoriesScreen())),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
