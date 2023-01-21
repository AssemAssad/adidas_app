
import 'package:flutter/material.dart';

import 'Splash1.dart';

class SuccessfullyRegistered extends StatelessWidget {
  const SuccessfullyRegistered({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207,207,207,1),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 240.0,),
              Image(
                image: AssetImage(
                  'assets/images/check.png'
                ),
                height: 150,
                width: 150,),
              SizedBox(height: 20,),
              Text(
                'Successfully Registered',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black45
                ),
              ),
              SizedBox(height:10,),
              Text(
                'Congurtulation! your account is registered in this application',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45
                ),
              ),
              SizedBox(height: 140.0,),
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

                  },
                  child: Text(
                    'Thank you',
                    style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 18.0
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
