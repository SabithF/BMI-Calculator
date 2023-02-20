import 'package:bmi_cal/const.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          color: Color.fromARGB(255, 2, 0, 29),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'CHECK YOUR',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            letterSpacing: .5,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'BMI',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 9, 255, 0),
                            letterSpacing: .5,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.man_rounded,
                        size: 100,
                        color: Colors.amber.shade300,
                      ),
                      Text(
                        'MALE',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              letterSpacing: .5,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.woman_rounded,
                        size: 100,
                        color: Colors.amber.shade300,
                      ),
                      Text(
                        'FEMALE',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                          textStyle: kTextStyle,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),

              // Height and widht button

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Height',
                          style: GoogleFonts.poppins(
                            textStyle: kTextStyle,
                          ),
                        ),
                        Text(
                          '135',
                          style: GoogleFonts.poppins(
                            textStyle: kResultText,
                          ),
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: FloatingActionButton(
                                onPressed: null,
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: FloatingActionButton(
                                focusColor: Color.fromARGB(255, 208, 255, 0),
                                onPressed: null,
                                child: Icon(
                                  Icons.remove,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Height',
                          style: GoogleFonts.poppins(
                            textStyle: kTextStyle,
                          ),
                        ),
                        Text(
                          '135',
                          style: GoogleFonts.poppins(
                            textStyle: kResultText,
                          ),
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: FloatingActionButton(
                                onPressed: null,
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: FloatingActionButton(
                                focusColor: Color.fromARGB(255, 208, 255, 0),
                                onPressed: null,
                                child: Icon(
                                  Icons.remove,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
