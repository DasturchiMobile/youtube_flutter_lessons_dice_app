import 'package:dice_app/ui/screens/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          CupertinoPageRoute(builder: (ctx) => const HomeScreen()), (
          route) => false);
    });
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/sp_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset("assets/images/7.png",
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8),
              const SizedBox(
                height: 100,
              ),
              const Text(
                "PLAY GAME",
                style: TextStyle(
                  fontSize: 60,
                  color: Color(0xFFF6E89C),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                color: Color(0xFFF6E89C),
                height: 2,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 12),
              ),
              const SizedBox(height: 10,),
              const Text(
                "DASTURCHIMOBILE",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFF6E89C),
                ),
              ),
              const SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
