import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  GlobalKey<FormState> _key = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'CREATE ACCOUNT',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                    color: Color.fromRGBO(255, 195, 18, 1.0),
                  ),
                ),
              ),
              Container(
                height: height * 0.4,
                width: width * 0.8,
                child: SvgPicture.asset('images/signin.svg'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Form(
                  key: _key,
                  child: Column(
                    children: [
                      ListTile(
                        title: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'Enter Email Id';
                            }
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email,
                                  color: Color.fromRGBO(63, 61, 86, 1.0)),
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                  color: Color.fromRGBO(63, 61, 86, 1.0),
                                  fontSize: 18),
                              hintText: 'Enter Email',
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(63, 61, 86, 1.0)),
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'Enter Password';
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(63, 61, 86, 1.0)),
                            ),
                            prefixIcon: Icon(Icons.lock,
                                color: Color.fromRGBO(63, 61, 86, 1.0)),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(63, 61, 86, 1.0),
                                fontSize: 18),
                            hintText: 'Enter Password',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        title: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'Enter Confirm Password';
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(63, 61, 86, 1.0)),
                            ),
                            prefixIcon: Icon(Icons.lock,
                                color: Color.fromRGBO(63, 61, 86, 1.0)),
                            labelText: 'Confirm Password',
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(63, 61, 86, 1.0),
                                fontSize: 18),
                            hintText: 'Enter Confirm Password',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        height: 40,
                        minWidth: width * 0.8,
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        color: Color.fromRGBO(255, 195, 18, 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
