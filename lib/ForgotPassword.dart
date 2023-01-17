import 'package:adidas_app/VerifyCode.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207,207,207,1),
      body:
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(height: 80.0,),
            Center(
              child: Image(
                  image: AssetImage(
                  'assets/images/blue.png'),
                height: 100,
                width: 100,
              ),
            ),
            SizedBox(height: 40.0,),
            Text(
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
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => VerifyCode(),));

              },
              child: Text(
                'Continue',
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
                Text(
                  "Remember Password?",
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold
                  ),
                ),
                TextButton(onPressed: () {
                  Navigator.pop(context);
                },
                    child: Text(
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
    );
  }
}
