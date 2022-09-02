import 'package:flutter/material.dart';
import 'package:task/dash_board.dart';
import 'package:task/login.dart';
import 'package:task/storage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    print("${LocalStorage.getValue('login')}");
    Future.delayed(const Duration(seconds: 3), () {
      if (LocalStorage.getValue('login') == true) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => DashBoard()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => Login()));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FlutterLogo(
              size: 200,
            ),
            Text("Splash Screen",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 24),),
          ],
        ),
      ),
    );
  }
}
