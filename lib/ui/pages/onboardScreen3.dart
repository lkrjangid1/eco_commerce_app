import 'package:eco_commerce_app/routing_constants.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'dart:math' as math;

class OnboardScreen3 extends StatefulWidget {
  @override
  _OnboardScreen3State createState() => _OnboardScreen3State();
}

class _OnboardScreen3State extends State<OnboardScreen3> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            top: 40,
            left: 20,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.transparent,
              child: Icon(LineAwesomeIcons.arrow_left),
              elevation: 0,
              highlightElevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              splashColor: Colors.transparent,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF96EFA6), Color(0xFF26A6B5)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Eco-friendly',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
                child: Container(
                  width: width,
                  child: Image(
                      image: AssetImage("assets/images/onboard3.png"),
                      fit: BoxFit.fitWidth),
                ),
              ),
              Text(
                "Look deep into nature, and then you will\nunderstand everything better.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF1F1F1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Transform.rotate(
                        angle: math.pi / 4.0,
                        child: Container(
                          width: 9,
                          height: 9,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Transform.rotate(
                        angle: math.pi / 4.0,
                        child: Container(
                          width: 9,
                          height: 9,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Transform.rotate(
                        angle: math.pi / 4.0,
                        child: Container(
                          width: 10,
                          height: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: OutlineButton(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(0),
                      shape: StadiumBorder(),
                      onPressed: () {
                        Navigator.pushNamed(context, LoginRoute);
                      },
                      child: SizedBox(
                        width: width * 0.375,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            "Login",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFFEFF5FF).withOpacity(0.4),
                              blurRadius: 16,
                              offset: Offset(0, 4)),
                        ],
                        borderRadius: BorderRadius.circular(500),
                      ),
                      child: FlatButton(
                        colorBrightness: Brightness.light,
                        padding: EdgeInsets.all(0),
                        shape: StadiumBorder(),
                        onPressed: () {
                          Navigator.pushNamed(context, RegisterRoute);
                        },
                        child: SizedBox(
                          width: width * 0.375,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Text(
                              "Signup",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1C1C1C),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}