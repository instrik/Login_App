// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInDetails extends StatefulWidget {
  LogInDetails({required this.email});
  final String email;
  @override
  State<LogInDetails> createState() => _LogInDetailsState();
}

class _LogInDetailsState extends State<LogInDetails> {
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
                          'Log In',
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
                    'By being logged in, \nyou have agree to T&C',
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
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.grey.shade300,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text(
                        'Your E Mail is  ${widget.email}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
                        ' Log Out',
                        style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context, true);
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'To create another account ? ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                        color: Color(0xff4C5980),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      ' Sign Up',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                        color: Color(0xffF9703B),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
