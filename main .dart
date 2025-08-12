// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/registration_page.dart';
import 'LogInDetails.dart';

// trial comment 19

void main() {
  runApp(LogInMaterial());
}

class LogInMaterial extends StatefulWidget {
  @override
  State<LogInMaterial> createState() => _LogInMaterialState();
}

class _LogInMaterialState extends State<LogInMaterial> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginApp(),
    );
  }
}

class LoginApp extends StatefulWidget {
  @override
  State<LoginApp> createState() => LoginAppState();
}

class LoginAppState extends State<LoginApp> {
  String email = '', password = '';
  TextEditingController passwordController = TextEditingController();
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
                    'By logging in, \nyou agree to T&C',
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
                // print(email);
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
                  child: TextFormField(
                    controller: passwordController,
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
                      setState(() {
                        password = value;
                        print(password);
                      });
                    },
                  ),
                ),
                // print(password),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Text(
                        'forgot password?',
                        style: GoogleFonts.rubik(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
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
                        'Log In',
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                        color: Color(0xff4C5980),
                        fontSize: 16,
                      ),
                    ),
                    InkWell(
                      child: Text(
                        ' Sign Up',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          color: Color(0xffF9703B),
                          fontSize: 16,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                RegistrationPage(email: email),
                          ),
                        );
                      },
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
