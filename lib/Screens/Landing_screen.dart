import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Ceisy',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.grey),
                        ),
                      ],
                    ),

                  ),


                  Container(width: 40,height: 3,decoration: BoxDecoration(
                    color: Color(0xFF0D8985)
                  ),),
                  SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Image.asset(
                    'assets/images/loading.png',
                    height: 200.0,
                    width: 200.0,
                  ),


                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Cryptocurrency ',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: Colors.black),
                        ),
                        Text(
                          'Made easy',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        Text(
                          'Start Exploring the crypto world now,',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.grey),
                        ),
                        Text(
                          'With our app it is easy and secure',
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  TextButton(
                    child: Text("Create Portfolio! "),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Color(0xFF0D8985),
                        elevation: 20,
                        minimumSize: Size(150, 50),
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 50)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
