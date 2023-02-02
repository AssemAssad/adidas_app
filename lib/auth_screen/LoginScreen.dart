import 'dart:io';
import 'dart:math';
import 'package:adidas_app/auth_screen/ForgotPassword.dart';
import 'package:adidas_app/auth_screen/RegisterScreen.dart';
import 'package:adidas_app/auth_screen/Splash1.dart';
import 'package:adidas_app/provider/auth_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: Provider.of<AuthProvider>(context, listen: false).signInKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 100.0,
                ),
                const Image(
                  image: AssetImage('assets/images/blue.png'),
                  height: 100,
                  width: 100,
                ),
                const SizedBox(
                  height: 70.0,
                ),
                TextFormField(
                  controller: Provider.of<AuthProvider>(context, listen: false).emailController,
                  keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                    return Provider.of<AuthProvider>(context, listen: false)
                        .emailValiation(value ?? '');
                  },
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    hintStyle: const TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(23, 88, 150, 1), width: 1)),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color.fromRGBO(23, 88, 150, 1),
                    ),
                  ),
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: Provider.of<AuthProvider>(context, listen: false)
                      .passwordeController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (String? value) {
                    return Provider.of<AuthProvider>(context, listen: false)
                        .passwordValiation(value ?? '');
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(23, 88, 150, 1), width: 1)),
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      color: Color.fromRGBO(23, 88, 150, 1),
                    ),
                  ),
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ));
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(23, 88, 150, 1),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Provider.of<AuthProvider>(context, listen: false)
                          .signIn();
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.grey[200], fontSize: 18.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: 135, height: 2, color: Colors.black45),
                      const Text(
                        'OR',
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      Container(width: 135, height: 2, color: Colors.black45),
                    ]),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black12),
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.facebook),
                          color: Colors.blue,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black12),
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                              AssetImage('assets/images/search.png'),
                              size: 150,
                              color: Colors.redAccent,
                            )),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black12),
                            borderRadius: BorderRadius.circular(5)),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.apple,
                          ),
                          color: Colors.black54,
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          AppRoute.navigationpushReplacementWidget(
                              RegisterScreen());
                        },
                        child: const Text(
                          'Register Now',
                          style: TextStyle(
                              color: Color.fromRGBO(23, 88, 150, 1),
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
