import 'package:dieticianapp/GirisYapSayfasi.dart';
import 'package:flutter/material.dart';
import 'package:dieticianapp/main.dart';
import 'package:flutter/rendering.dart';
import 'package:dieticianapp/LetsContinue.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 16, 6, 5),
        width: 5.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your First Step To Meet Us!"),
        backgroundColor: Color.fromARGB(255, 196, 70, 61),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          height: 400.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: [
              _logoImage(),
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: _outlineInputBorder(),
                          labelText: "E-mail adress",
                          hintText: 'eceaslan296@gmail.com',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 196, 70, 61),
                            fontWeight: FontWeight.bold,
                          ),
                          border: _outlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: _outlineInputBorder(),
                          labelText: "Password",
                          hintText: '***********',
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 196, 70, 61),
                            fontWeight: FontWeight.bold,
                          ),
                          border: _outlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MaterialButton(
                          child: Text("Sign Up"),
                          color: Color.fromARGB(255, 196, 70, 61),
                          onPressed: () {},
                        ),
                        MaterialButton(
                            child: Text("Forgot Password"),
                            color: Color.fromARGB(255, 196, 70, 61),
                            onPressed: () {})
                      ],
                    ),
                    SizedBox(height: 20.0),
                    _loginButton(),
                  ],
                ),
              ),
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

  Widget _loginButton() => ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GirisYapSayfasi()),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(255, 196, 70, 61),
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            Colors.black,
          ),
        ),
        child: Text(
          'Login',
        ),
      );
  Widget _logoImage() {
    return Container(
      width: 300.0,
      height: 500.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
