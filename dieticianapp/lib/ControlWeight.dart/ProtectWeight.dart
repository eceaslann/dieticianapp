import 'package:flutter/material.dart';
import 'package:dieticianapp/main.dart';
import 'package:flutter/rendering.dart';
import 'package:dieticianapp/LetsContinue.dart';
import 'package:dieticianapp/logın.dart';

class Protect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('What To Do To Protect Weight?'),
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
                        "Tips to protect weight!",
                        style: TextStyle(
                            color: Color(0xfff1887e),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "exercise often,eat a healty breakfast daily,start hydrated,eat whole foods, eat reponsibly and mindfully,plan your meals ahead of time, get cookbooks.",
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
                              "If you eat 1700 calories in a healthy way, you can maintain your weight.",
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
                              "Breakfast: overnight oats made with rolled oats, chia seeds, and milk, topped with fresh berries and pumpkin seeds.",
                              style: TextStyle(
                                  color: Color(0xff7b7da2),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Lunch: premade egg-and-veggie muffins with a fresh basil-and-tomato salad and some avocado.",
                              style: TextStyle(
                                  color: Color(0xff7b7da2),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Snack: mango-spinach smoothie.",
                              style: TextStyle(
                                  color: Color(0xff7b7da2),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Dinner: homemade cauliflower-crust pizza topped with pesto, mushrooms, peppers, a handful of spinach, and marinated chicken or tempeh.",
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
