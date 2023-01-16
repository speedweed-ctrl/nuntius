
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nuntius/login_page.dart';

class UserS extends StatefulWidget {
  const UserS({super.key});

  @override
  State<UserS> createState() => _UserSState();
}

final user=FirebaseAuth.instance.currentUser;

class _UserSState extends State<UserS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromRGBO(24, 25, 32, 1),
    body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: 60,),
              Column(
                children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar.webp'),
                      radius: 200,
                    ),
                    SizedBox(height: 25,),
                    
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text((user?.email).toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                    SizedBox(height: 25,),
                    Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: InkWell(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                    if(user!=null){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder:(context)=>const Login())
                      );
                    }
                  },
                 child :Container(
                  padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Color.fromRGBO(84, 104, 255,1),
                    borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text('Sign out',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      
                    ),
                 ),
                 )
               ),
                ],
              )
            ],
          ),
        ),
    ),
    );
  }
}