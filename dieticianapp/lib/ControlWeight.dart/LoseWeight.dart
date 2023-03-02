import 'package:flutter/material.dart';
import 'package:dieticianapp/main.dart';
import 'package:flutter/rendering.dart';
import 'package:dieticianapp/LetsContinue.dart';
import 'package:dieticianapp/logın.dart';
import 'package:google_fonts/google_fonts.dart';

class LoseWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('What To Do To Lose Weight?'),
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
                        "Tips to lose weight!",
                        style: TextStyle(
                            color: Color(0xfff1887e),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "do not skip breakfast,eat regular meals,eat plenty of fruit and veg,get more active, drink plenty of water,plan your meals ahead of time, do not ban foods.",
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
                              "If you eat 1200 calories in a healthy way, you can maintain your weight.",
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
                              "Breakfast: combine 3/4 cup bran flakes, 1 banana and 1 cup fat-free milk in a bowl.",
                              style: TextStyle(
                                  color: Color(0xff7b7da2),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Lunch: serve 4 ounces broiled flounder or sole with 2 sliced plum tomatoes sprinkled with 2 tablespoons grated Parmesan cheese, broiled until just golden. Eat with 1 cup cooked couscous and 1 cup steamed broccoli. Enjoy with a single-serve ice cream for dessert.",
                              style: TextStyle(
                                  color: Color(0xff7b7da2),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Dinner: brush 4 ounces boneless, skinless chicken breast with barbecue sauce and grill. Garnish chicken with chopped scallions and a squeeze of lime juice. Combine 2 heaping cups of sautéed spinach with garlic, olive oil and tomatoes and serve with 1/2 plain baked or sweet potato.",
                              style: TextStyle(
                                  color: Color(0xff7b7da2),
                                  fontWeight: FontWeight.bold),
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
