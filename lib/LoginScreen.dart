import 'dart:io';
import 'dart:math';
import 'package:adidas_app/ForgotPassword.dart';
import 'package:adidas_app/RegisterScreen.dart';
import 'package:adidas_app/Splash1.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> globalKey = GlobalKey();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(207,207,207,1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: globalKey,
            child: Column(
              children: [
                const SizedBox(height: 100.0,),
                const Image(image: AssetImage(
                    'assets/images/blue.png'
                ),
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 70.0,),
                TextFormField(
                  //controller: emailEditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    hintStyle: const TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color.fromRGBO(23,88,150,1),width: 1)
                    ),
                    prefixIcon:  Icon(Icons.email_outlined,color:Color.fromRGBO(23,88,150,1),),
                  ),
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                ),
                const SizedBox(height: 15.0,),
                TextFormField(
                  //controller: emailEditingController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: const TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Color.fromRGBO(23,88,150,1),width: 1)
                    ),
                    prefixIcon:  Icon(Icons.lock_outline_rounded,color:Color.fromRGBO(23,88,150,1),),
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
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => ForgotPassword(),));
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(23,88,150,1),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Splash1(),));

                      globalKey.currentState!.validate();
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: 18.0
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(width: 135,height: 2,color: Colors.black45),
                      Text('OR',style: TextStyle(color: Colors.black45,fontWeight: FontWeight.bold,fontSize: 12),),
                      Container(width: 135,height: 2,color: Colors.black45),
                    ]
                ),
                const SizedBox(height: 20.0,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.black12),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon:Icon(Icons.facebook),color: Colors.blue,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color: Colors.black12),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon:  ImageIcon(
                            AssetImage('assets/images/search.png'),
                            size: 150,
                            color: Colors.redAccent,
                          )
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1,color: Colors.black12),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon:Icon(Icons.apple,),color: Colors.black54,
                        ),
                      ),
                    ]
                ),
                const SizedBox(height: 50.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    TextButton(onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => RegisterScreen(),));
                    },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                              color: Color.fromRGBO(23,88,150,1),
                              fontWeight: FontWeight.bold
                          ),
                        )
                    )
                  ],
                )



              ],
            ),
          ),
        ),
      ),
    );

  }
  // Future img(src) async
  // {
  //   final pick = await ImagePicker().pickImage(source: src);
  //   if(pick == null){
  //     return 'null';
  //
  //   }else{
  //     imgP = File(pick.path);
  //   }
  // }
}

