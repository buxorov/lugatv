import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lugat/screen/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
Future.delayed(Duration(seconds: 2),(){
  Navigator.pushNamed(context, HomeScreen.rouneName);
});
    super.initState(

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("library.webp"),
      ),
    );
  }
}
