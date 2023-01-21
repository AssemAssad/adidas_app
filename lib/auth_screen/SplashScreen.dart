import 'dart:async';

import 'package:adidas_app/auth_screen/LoginScreen.dart';
import 'package:adidas_app/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {


navigateFun(BuildContext context)async{
 await Future.delayed(const Duration(seconds: 3));
 Provider.of<AuthProvider>(context,listen: false).checkUser();
}
  @override
  Widget build(BuildContext context) {
        navigateFun(context);

    return Scaffold(
      backgroundColor:const Color.fromRGBO(23, 88, 150,1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Image(image: AssetImage(
                'assets/images/whiet.png'
            ),height: 200,width: 200,
            )
          ],
        ),
      ),
    );
  }
}
