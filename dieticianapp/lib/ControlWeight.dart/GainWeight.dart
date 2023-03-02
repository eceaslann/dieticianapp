import 'package:flutter/material.dart';
import 'package:dieticianapp/main.dart';
import 'package:flutter/rendering.dart';
import 'package:dieticianapp/LetsContinue.dart';
import 'package:dieticianapp/logın.dart';

class GainWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('What To Do To Gain Weight?'),
          backgroundColor: Color.fromARGB(255, 196, 70, 61),
          actions: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.question_mark,
                    color: Color.fromARGB(255, 196, 70, 61),
                  ),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(children: <Widget>[
              Card(
                elevation: 4,
                margin: EdgeInsets.fromLTRB(10, 60, 10, 60),
                //EdgeInsets.only(left: 100, right: 100, top: 60, bottom: 60),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 0,
                    right: 10,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Tips to gain weight!",
                        style: TextStyle(
                            color: Color(0xfff1887e),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "eating more frequently,choosing food with lots of nutrients,top it off, try smoothies and shakes,watch what and when you drink,exercise.",
                        style: TextStyle(
                            color: Color(0xff7b7da2),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 290, right: 0, top: 0, bottom: 0),
                        child: Text("View note...",
                            style: TextStyle(
                                color: Color(0xffec5345),
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  //EdgeInsets.only(left: 100, right: 100, top: 60, bottom: 60),
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "We have calculated the calories you need to take.",
                              style: TextStyle(
                                  color: Color(0xfff1887e),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "If you eat 2200 calories in a healthy way, you can maintain your weight.",
                              style: TextStyle(
                                  color: Color(0xff7b7da2),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Row(children: <Widget>[
                              Image.asset('assets/images/diet.png',
                                  width: 150, height: 150, fit: BoxFit.cover),
                              SizedBox(
                                width: 100,
                              ),
                              Image.asset(
                                'assets/images/strong.png',
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ]),
                          ]))),
              SizedBox(height: 10),
              Card(
                  elevation: 4,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  //EdgeInsets.only(left: 100, right: 100, top: 60, bottom: 60),
                  child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "This meal prepared for you!",
                              style: TextStyle(
                                  color: Color(0xfff1887e),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Breakfast: 1 cup of coffee with milk + whole wheat sandwich with lettuce, tomato, cheese and egg + 1 medium apple",
                              style: TextStyle(
                                  color: Color(0xff7b7da2),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Lunch: chicken strogonoff with rice and black beans + 1 cabbage salad with carrots seasoned with yogurt sauce and cilantro + 1 orange.",
                              style: TextStyle(
                                  color: Color(0xff7b7da2),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Snack: 6 whole wheat biscuits with peanut butter + 1 handful of almonds",
                              style: TextStyle(
                                  color: Color(0xff7b7da2),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Dinner: meatballs with tomato sauce, mashed potatoes and broccoli baked with cheese and seasoned with olive oil.",
                              style: TextStyle(
                                color: Color(0xff7b7da2),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 290, right: 0, top: 0, bottom: 0),
                              child: Text(
                                  "Recommended that you continue with a dietitian.",
                                  style: TextStyle(
                                      color: Color(0xfff1887e),
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 10),
                            Row(children: <Widget>[
                              SizedBox(
                                width: 5,
                              ),
                            ]),
                          ])))
            ])));
  }
}
