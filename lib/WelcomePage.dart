import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'LoginPage.dart';
import 'SignupPage.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
                  child: Container(
            height: height,
            width: width,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 50),
                        child: Text('WELCOME',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 195, 18, 1.0),
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: width*.80,
                  height: height*0.50,
                  child: SvgPicture.asset('images/welcome.svg',)
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      MaterialButton(
                        color: Colors.grey,
                        height: 40,
                        minWidth: width*0.8,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                        },
                        child: Text('Login',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ), 
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MaterialButton(
                  
                        color: Color.fromRGBO(255, 195, 18, 1.0),
                        height: 40,
                        minWidth: width*0.8,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
                        },
                        child: Text('Sign up',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ), 
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