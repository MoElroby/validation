//111324
import 'dart:math';

import 'package:flutter/material.dart';

import '../secondbmi/SecondBMI.dart';

class BMI_Screen extends StatefulWidget {
  const BMI_Screen({Key? key}) : super(key: key);

  @override
  State<BMI_Screen> createState() => _BMI_ScreenState();
}

class _BMI_ScreenState extends State<BMI_Screen> {
  bool ismale = false;
  // bool value2= false ;
  double weight = 60;
  double age = 15;
  double height = 150;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111324),
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Color(0xff111324),
        centerTitle: true,
        title: Text(
          "BMI CAlaculator",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Color(0xff111320),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              ismale = true;
                              // value2 = !value2 ;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ismale ? Colors.blue : Color(0xff24263b),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage("assets/male.png"),
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              ismale = false ;
                              // value1= !value1 ;
                            });
                          },
                          child:


                             Container(

                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(20),
                                     color:
                                     ismale ? Color (0xff24263b) : Colors.pink    ) ,


                               child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage("assets/female1.png"),
                                    width: 100,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ) ,
                                ],
                            ),
                             ),
                          ),
                        ),

                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff111321),
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${height.round()}",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Slider(
                            value: height,
                            max: 220,
                            min: 120,
                            label: height.toString(),
                            onChanged: (value) {
                              setState(() {
                                height = value;

                                print(height.round());
                              });
                            })
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsetsDirectional.all(20),
                color: Color(0xff111322),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff24263b),
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "$weight",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    mini: true,
                                    heroTag: "add4",
                                    child: Icon(Icons.remove)),
                                SizedBox(
                                  width: 5,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                      print(weight);
                                    });
                                  },
                                  mini: true,
                                  heroTag: "add3",
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff24263b),
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "$age",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  mini: true,
                                  heroTag: "add2",
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  mini: true,
                                  heroTag: "add1",
                                  child: Icon(
                                    Icons.add,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.blue,
                onPressed: () {
                    double result = age / pow(height / 100, 2);
                    print(result.round());

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondBMI(
                         result: result.round(),
                        // age: height,
                        ismale: ismale,
                        age: age,


                      ),
                    ),
                  );
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(fontSize: 20, color: Color(0xff24263b)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
