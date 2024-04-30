// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'LogInDetails.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({required this.email});
  final String email;
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Registration on',
                          style: GoogleFonts.rubik(
                            color: Color(0xff2D3142),
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'App',
                          style: GoogleFonts.rubik(
                            color: Color(0xffF9703B),
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 14,
                ),
                Center(
                  child: Text(
                    'By registering on app, \nyou agree to T&C',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      color: Color(0xff4C5980),
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                            0xffE4E7EB,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xff323F4B),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'E mail',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                            0xffE4E7EB,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Color(0xff323F4B),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.brown,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                            0xffE4E7EB,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_open,
                        color: Color(0xff323F4B),
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.brown,
                    decoration: InputDecoration(
                      hintText: 'Re enter the password',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(
                            0xffE4E7EB,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_open,
                        color: Color(0xff323F4B),
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xffF9703B),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Register',
                        style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LogInDetails(email: email)));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
