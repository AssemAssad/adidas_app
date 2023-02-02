import 'package:flutter/material.dart';

import 'SuccessfullyRegistered.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
                'New password',
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
                  'Create your new password',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ),
              SizedBox(height: 40.0,),

              TextFormField(
                //controller: emailEditingController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "New Password",
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
              SizedBox(height: 20.0,),
              TextFormField(
                //controller: emailEditingController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
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
                        .push(MaterialPageRoute(builder: (context) => SuccessfullyRegistered(),));

                  },
                  child: Text(
                    'Save',
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
