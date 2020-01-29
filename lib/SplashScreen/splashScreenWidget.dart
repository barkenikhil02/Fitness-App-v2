import 'dart:async';
import 'package:fitness_app_megahack/pedometer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int splashDuration = 4;

  startTime() async {
    return Timer(
      Duration(seconds: splashDuration),
      () {
        SystemChannels.textInput.invokeMethod('TextInput.hide');

        //HereTo Navigate
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pedometer()),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff0082c4),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                child: Text('Fitness App For MegaHack'),
              ),
              Container(
                child: Image.asset('assets/SplashScreen/splashScreen.gif'),
              ),
              Container(
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
