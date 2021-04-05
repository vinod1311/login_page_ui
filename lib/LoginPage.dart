

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/SignupPage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          child: Form(
            key: _key,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 35,
                      color: Color.fromRGBO(255, 195, 18, 1.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: height * 0.4,
                  width: width * 0.8,
                  child: SvgPicture.asset(
                    'images/login.svg',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty){
                        return 'Enter Email';
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email,color: Color.fromRGBO(63,61,86, 1.0),),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Color.fromRGBO(63,61,86, 1.0),fontSize: 18),
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color.fromRGBO(63,61,86, 1.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: TextFormField(
                    validator: (input){
                      if(input.isEmpty){
                        return 'Enter Password';
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock,color: Color.fromRGBO(63,61,86, 1.0),),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Color.fromRGBO(63,61,86, 1.0),fontSize: 18),
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Color.fromRGBO(63,61,86, 1.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  onPressed: (){},
                  height: 40,
                  minWidth: width*0.8,
                  textColor: Colors.black,
                  child: Text('Login',style: TextStyle(fontSize: 20,
                          fontWeight: FontWeight.w600),),
                  color: Color.fromRGBO(255, 195, 18, 1.0),
                  shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                ),
                Container(
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
                      MaterialButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                        },
                        child: Text('Sign up',style: TextStyle(color: Colors.black54),),

                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
