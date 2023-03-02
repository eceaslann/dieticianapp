import 'package:flutter/material.dart';
import 'package:dieticianapp/main.dart';
import 'package:flutter/rendering.dart';
import 'package:dieticianapp/LetsContinue.dart';
import 'package:dieticianapp/logın.dart';
import 'package:flutter/services.dart';

class GirisYapSayfasi extends StatefulWidget {
  @override
  _GirisYapSayfasiState createState() => _GirisYapSayfasiState();
}

class _GirisYapSayfasiState extends State<GirisYapSayfasi> {
  late String? _selectedSex = null;
  final _formKey = GlobalKey<FormState>();
  final _numericFormatter = FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ENTER YOUR INFORMATION TO HELP YOU'),
        backgroundColor: Color.fromARGB(255, 196, 70, 61),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/workout.png',
            fit: BoxFit.fitWidth,
          ),
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 108, 22, 51)),
                        ),
                        labelText: "Age",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 108, 22, 51),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      inputFormatters: [_numericFormatter],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: FormField<String>(
                      builder: (FormFieldState<String> state) {
                        return InputDecorator(
                          decoration: InputDecoration(
                            labelText: 'Gender',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 108, 22, 51),
                            ),
                            border: OutlineInputBorder(),
                            errorText: state.hasError ? state.errorText : null,
                          ),
                          isEmpty: _selectedSex == null,
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _selectedSex,
                              isDense: true,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedSex = newValue!;
                                });
                                state.didChange(newValue);
                              },
                              items: ['Male', 'Female', 'Other']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                      onSaved: (value) {
                        _selectedSex = value!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select your sex';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 108, 22, 51)),
                        ),
                        labelText: "Weight",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 108, 22, 51),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      inputFormatters: [_numericFormatter],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 108, 22, 51)),
                        ),
                        labelText: "Height",
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 108, 22, 51),
                        ),
                        border: OutlineInputBorder(),
                      ),
                      inputFormatters: [_numericFormatter],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  _girisButton(context),
                ],
              ),
            ),
          ),
        ],
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LetsContinue()),
          );
        },
        child: Text('Let\'s continue!'),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 196, 70, 61),
        ),
      );
}
