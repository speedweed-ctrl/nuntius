// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nuntius/login_page.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(child:
    Drawer(
      backgroundColor: Color.fromRGBO(24, 25, 32, 1),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          /*DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),

          ),*/
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.input,color: Colors.white,),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.verified_user,color: Colors.white,),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.settings,color: Colors.white,),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.border_color,color: Colors.white,),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            textColor: Colors.white,
            leading: Icon(Icons.exit_to_app,color: Colors.white,),
            title: Text('Logout'),
            onTap: () {
              Future<void> logout() async{
                  await FirebaseAuth.instance.signOut();
                  if(FirebaseAuth.instance.currentUser==null){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>Login())
                    );
                  }
              }
              logout();
              },
          ),
        ],
      ),
    ));
  }
}