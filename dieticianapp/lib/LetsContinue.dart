import 'package:flutter/material.dart';
import 'package:dieticianapp/main.dart';
import 'package:flutter/rendering.dart';
import 'package:dieticianapp/LetsContinue.dart';
import 'package:dieticianapp/logın.dart';
import 'package:dieticianapp/ControlWeight.dart/LoseWeight.dart';
import 'package:dieticianapp/ControlWeight.dart/ProtectWeight.dart';
import 'package:dieticianapp/ControlWeight.dart/GainWeight.dart';

class LetsContinue extends StatefulWidget {
  @override
  _LetsContinueState createState() => _LetsContinueState();
}

class _LetsContinueState extends State<LetsContinue> {
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What Do You Do?'),
        backgroundColor: Color.fromARGB(255, 196, 70, 61),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromARGB(255, 196, 70, 61), width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CheckboxListTile(
                title: Text('Lose Weight'),
                value: _isChecked1,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked1 = value!;
                    _isChecked2 = false;
                    _isChecked3 = false;
                  });
                },
                activeColor: Color.fromARGB(255, 196, 70, 61),
              ),
              CheckboxListTile(
                title: Text('Protect'),
                value: _isChecked2,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked2 = value!;
                    _isChecked1 = false;
                    _isChecked3 = false;
                  });
                },
                activeColor: Color.fromARGB(255, 196, 70, 61),
              ),
              CheckboxListTile(
                title: Text('Gain Weight'),
                value: _isChecked3,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked3 = value!;
                    _isChecked1 = false;
                    _isChecked2 = false;
                  });
                },
                activeColor: Color.fromARGB(255, 196, 70, 61),
              ),
              _girisButton(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor: Color.fromARGB(255, 196, 70, 61),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Call',
            backgroundColor: Color.fromARGB(255, 196, 70, 61),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
            backgroundColor: Color.fromARGB(255, 196, 70, 61),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromARGB(255, 196, 70, 61),
          ),
        ],
      ),
    );
  }

  Widget _girisButton(BuildContext context) => ElevatedButton(
        onPressed: (_isChecked1 != _isChecked2 ||
                    _isChecked2 != _isChecked3 ||
                    _isChecked1 != _isChecked3) &&
                (_isChecked1 || _isChecked2 || _isChecked3)
            ? () {
                if (_isChecked1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoseWeight()),
                  );
                } else if (_isChecked2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Protect()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GainWeight()),
                  );
                }
              }
            : null,
        child: Text('Let\'s continue!'),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 196, 70, 61),
        ),
      );
}
