import 'package:adidas_app/auth_screen/LoginScreen.dart';
import 'package:adidas_app/auth_screen/VerifyCode.dart';
import 'package:adidas_app/provider/auth_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key:             
        Provider.of<AuthProvider>(context,listen: false).changeKey
,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(207,207,207,1),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
            children: [
           const   SizedBox(height: 80.0,),
           const   Center(
                child: Image(
                    image: AssetImage(
                    'assets/images/blue.png'),
                  height: 100,
                  width: 100,
                ),
              ),
          const    SizedBox(height: 40.0,),
          const    Text(
                'Forgot password?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black45
                ),
              ),
              SizedBox(height: 10.0,),
              Container(
                width: 270,
                child: Text(
                  'Enter your registered email address below to receive your password reset instructions!',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 40.0,),
    
              TextFormField(
                controller: 
                Provider.of<AuthProvider>(context,listen: false).changePasswordeController,
                validator: (String ?value) {
       return Provider.of<AuthProvider>(context,listen: false).passwordValiation(value??'');
    
                },
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
              SizedBox(height: 20.0,),
    
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(23,88,150,1),
              ),
              child: MaterialButton(
                onPressed: () {
                     Provider.of<AuthProvider>(context,listen: false).forgetPassword();

                },
                child: Text(
                  'Rest',
                  style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 18.0
                  ),
                ),
              ),
            ),
              SizedBox(height: 170.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Text(
                    "Remember Password?",
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  TextButton(onPressed: () {
                  //  Navigator.pop(context);
    AppRoute.navigationWidget(LoginScreen());
                  },
                      child:const Text(
                        'Login Now',
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
}
