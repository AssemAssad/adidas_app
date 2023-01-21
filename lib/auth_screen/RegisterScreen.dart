import 'package:adidas_app/auth_screen/LoginScreen.dart';
import 'package:adidas_app/provider/auth_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(207,207,207,1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key:Provider.of<AuthProvider>(context,listen: false).signUpKey,
            child: Column(
              children: [
                const SizedBox(height: 90.0,),
                const Image(image: AssetImage(
                    'assets/images/blue.png'
                ),
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 50.0,),
                TextFormField(
                  //controller: emailEditingController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    hintStyle: const TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color:Color.fromRGBO(23,88,150,1),width: 1)
                    ),
                    prefixIcon:  Icon(Icons.perm_identity,color:Color.fromRGBO(23,88,150,1),),
                  ),
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                ),
                const SizedBox(height: 15.0,),
                TextFormField(

                  validator: (String? value) {
                          return  
        Provider.of<AuthProvider>(context,listen: false).emailValiation(value??'');


                  },
                  controller: Provider.of<AuthProvider>(context,listen: false).emailController,
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
                  controller: 
                  Provider.of<AuthProvider>(context,listen: false).passwordeController,
                  keyboardType: TextInputType.text,
                  validator: (String? value){
                          return    
                  Provider.of<AuthProvider>(context,listen: false).passwordValiation(value??'')
;
                        
                        },
                  obscureText: false,
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
                const SizedBox(height: 20.0,),

                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(23,88,150,1),
                  ),
                  child: TextButton(
                    onPressed: () {
                        Provider.of<AuthProvider>(context,listen: false).signUp();

                    },
                    child: Text(
                      'Sign up',
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
                            onPressed: () {

                            },
                            icon:const  ImageIcon(
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
                const SizedBox(height: 40.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already Have An Account?",
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                        Navigator.of(context)
                            .pop(MaterialPageRoute(builder: (context) => LoginScreen(),));
                    },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 14),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Color.fromRGBO(23,88,150,1),
                                fontWeight: FontWeight.bold
                            ),
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
