import 'package:adidas_app/auth_screen/NewPassword.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../const.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

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
            SizedBox(height: 70.0,),
            Text(
              'Verify Code',
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
                'The confirmation code was send via email',
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
            ),
            SizedBox(height: 40.0,),

            Pinput(
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              validator: (s) {
                return s == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),

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
                    .push(MaterialPageRoute(builder: (context) => NewPassword(),));

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
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Recived Code ?",
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold
                  ),
                ),
                TextButton(onPressed: () {
                  Navigator.pop(context);
                },
                    child: Text(
                      'Resend',
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
