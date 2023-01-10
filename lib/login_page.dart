
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final mail_controller=TextEditingController();
  final pass_controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 25, 32, 1),
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: 50,),
              Center(child: Text('Welcome Back !',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white)),),
              SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 42, 52, 1),
                    border: Border.all(color: Color.fromRGBO(36, 37, 38, 1)),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: mail_controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle:TextStyle(color:Colors.white),
                      
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(37, 42, 52, 1),
                    border: Border.all(color: Color.fromRGBO(36, 37, 38, 1)),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      controller: pass_controller,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle:TextStyle(color:Colors.white)
                      ),
                      style: TextStyle(color: Colors.white),
                      
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),

                 Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.end,
                    children: [
                      Text('Recover Password',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                      
                    ],
                  ),
                ),

                SizedBox(height: 25,),

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: InkWell(
                  onTap: () {
                    debugPrint(mail_controller.text);
                    debugPrint(pass_controller.text);
                  },
                 child :Container(
                  padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Color.fromRGBO(84, 104, 255,1),
                    borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                      
                    ),
                 ),
                 )
               ),
               SizedBox(height: 25,),
               
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Expanded(
                        child: Divider(
                                  indent: 20.0,
                                  endIndent: 10.0,
                                  thickness: 1,
                                  color: Colors.grey[700],
                                ),
                      ),
                      Text(
                            "OR",
                            style: TextStyle(color: Colors.grey[700]),
                      ),
                      Expanded(
                            child: Divider(
                                    indent: 10.0,
                                    endIndent: 20.0,
                                    thickness: 1,
                                    color: Colors.grey[700],
                            ),
                        ),
                    ],
                  ),
                  SizedBox(height: 25,),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: InkWell(

                      child: Container(
                        padding: EdgeInsets.all(13.2),
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sign in with Google',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(width: 15,),
                              Image.asset(
                                'assets/google_logo.png',
                                scale: 30,
                              ),
                              
                            ],
                          ),
                        ),
                      
                      ),
                    ),

                  )

            ],
          ),
        ),
      ),
    );
  }
}