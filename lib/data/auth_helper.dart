

import 'package:adidas_app/auth_screen/LoginScreen.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/AdminHomeScreen.dart';
import 'package:adidas_app/screen_admin/categories_screen/allcategorie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthHelper {
  AuthHelper._();
  static AuthHelper authHelper = AuthHelper._();
FirebaseAuth firebaseAuth=FirebaseAuth.instance;
 Future<UserCredential?> signIn(String email, String passworde)async {
try {
  final credential = await firebaseAuth.signInWithEmailAndPassword(
    email: email,
    password: passworde
  );
  return credential;
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    showDialog(context: AppRoute.navkey.currentContext!,
   builder: (context){
return AlertDialog(
  content:Text('No user found for that email.') ,
  actions: [TextButton(onPressed: (){
    AppRoute.popRoute();
  }, child:
   Text('ok'))],
);
   });
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
      showDialog(context: AppRoute.navkey.currentContext!,
   builder: (context){
return AlertDialog(
  content:Text('Wrong password provided for that user.') ,
  actions: [TextButton(onPressed: (){
    AppRoute.popRoute();
  }, child:
   Text('ok'))],
);
   });
  
    print('Wrong password provided for that user.');
  }
}


  }

 Future<UserCredential?> signUp(String email, String passworde) async{

    try {
  final credential = await firebaseAuth.createUserWithEmailAndPassword(
    email: email,
    password: passworde,
  );
  return credential;
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
        showDialog(context: AppRoute.navkey.currentContext!,
   builder: (context){
return AlertDialog(
  content:Text('The password provided is too weak.') ,
  actions: [TextButton(onPressed: (){
    AppRoute.popRoute();
  }, child:
   Text('ok'))],
);
   });
  
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
       showDialog(context: AppRoute.navkey.currentContext!,
   builder: (context){
return AlertDialog(
  content:Text('The account already exists for that email.') ,
  actions: [TextButton(onPressed: (){
    AppRoute.popRoute();
  }, child:
   Text('ok'))],
);
   });
  
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
  }
 verifyEmail(){
    User? user=firebaseAuth.currentUser;
user?.sendEmailVerification();
 }
 checkUser()async{
  User? user=firebaseAuth.currentUser;
  if(user==null){
   
    AppRoute.navigationpushReplacementWidget(LoginScreen());

  }else{
    AppRoute.navigationpushReplacementWidget(allCategorie());
  }
 }
  signOut() async {
   await firebaseAuth.signOut();
   AppRoute.navigationpushReplacementWidget(LoginScreen());
  }
  forgetPassword(String email) async {
try{
await  firebaseAuth.sendPasswordResetEmail(email: email);
 
   showDialog
   (context: AppRoute.navkey.currentContext!,
   builder: (context){
return AlertDialog(
  content:Text('send email massage can change a Passworde new') ,
  actions: [TextButton(onPressed: (){
    AppRoute.popRoute();
  }, child:
   Text('ok'))],
);
   });
  
}on Exception catch(e){

 print('not error');

}

  }
}
 