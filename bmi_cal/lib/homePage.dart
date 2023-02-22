// ignore_for_file: dead_code

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
  int height = 150;
  int weight = 50;

  late double bmi = calculateBmi(height: height, weight: weight);

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
                padding: const EdgeInsets.all(15.0),
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
                          '$height',
                          style: GoogleFonts.poppins(
                            textStyle: kResultText,
                          ),
                        ),

                        // height
                        Row(
                          children: [
                            SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (height < 220) height++;
                                    bmi = calculateBmi(
                                        height: height, weight: weight);
                                  });
                                },
                                child: const Icon(
                                  Icons.add,
                                  size: 40,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: FloatingActionButton(
                                focusColor: Color.fromARGB(255, 208, 255, 0),
                                onPressed: () {
                                  setState(() {
                                    if (height > 50) height--;
                                    bmi = calculateBmi(
                                        height: height, weight: weight);
                                  });
                                },
                                child: const Icon(
                                  Icons.remove,
                                  size: 40,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          'Weight',
                          style: GoogleFonts.poppins(
                            textStyle: kTextStyle,
                          ),
                        ),
                        Text(
                          '$weight',
                          style: GoogleFonts.poppins(
                            textStyle: kResultText,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight < 200) {
                                      weight++;
                                      bmi = calculateBmi(
                                          height: height, weight: weight);
                                    }
                                  });
                                },
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
                                onPressed: () {
                                  setState(() {
                                    if (weight > 20) weight--;
                                    bmi = calculateBmi(
                                        height: height, weight: weight);
                                  });
                                },
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
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'YOUR BMI ',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: kResultText2,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${bmi.toStringAsFixed(2)}",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: kResultText3,
                    ),
                  ),
                  Text(
                    getResult(bmi),
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      textStyle: kResultText3,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );

    // double calculateBmi({required int height, required int weight}) {
    //   weight / (height * height);
    // }
  }

  double calculateBmi({required int height, required int weight}) {
    return (weight / (height * height)) * 10000;
  }

  String getResult(bmiValue) {
    if (bmiValue >= 25) {
      return 'Over Weight ';
    } else if (bmiValue > 18.5) {
      return 'Normal';
    } else {
      return 'Under weight';
    }
  }
}
