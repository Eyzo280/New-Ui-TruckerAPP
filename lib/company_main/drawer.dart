import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:nowywygladapkitrucker/chat/list_chats.dart';

class DrawerCompanyMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Marek S.',
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(
                        icon: Icon(
                          MaterialCommunityIcons.logout,
                          color: Theme.of(context).buttonColor,
                        ),
                        onPressed: () {
                          print('Logout');
                        })
                  ],
                ),
                Row(
                  children: <Widget>[],
                )
              ],
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                stops: [0.001, 1],
                colors: [
                  Theme.of(context).textTheme.display1.color,
                  Theme.of(context).textTheme.display2.color,
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.chrome_reader_mode),
            title: Text('Zmien Zarzadzanie'),
            onTap: () {
              print('Zmien Zarzadzanie');
            },
          ),
          ListTile(
            // leading: Icon(MaterialCommunityIcons.email_open),
            leading: Icon(Icons.assignment_ind),
            title: Text(
              'Zaproszenia',
            ),
            onTap: () {
              print('Zaproszenia');
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chat'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ListChats();
                  },
                ),
              );
              print('Chat');
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Szukaj Pracownikow'),
            onTap: () {
              print('Szukaj Pracownikow');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              print('Settings');
            },
          ),
        ],
      ),
    );
  }
}
