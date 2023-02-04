

import 'package:adidas_app/data/auth_helper.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/AdminHomeScreen.dart';
import 'package:adidas_app/screen_admin/categories_screen/allcategorie.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:string_validator/string_validator.dart';

class AuthProvider extends ChangeNotifier {
  GlobalKey<FormState> signUpKey=GlobalKey();
    GlobalKey<FormState> signInKey=GlobalKey();
    GlobalKey<FormState> changeKey=GlobalKey();

  TextEditingController passwordeController=TextEditingController();
  TextEditingController emailController=TextEditingController();
    TextEditingController changePasswordeController = TextEditingController();

nullValiation(String?v){
if(v==null|| v.isEmpty){
  return 'this value is import!!';
}
}

emailValiation(String v){
if(!isEmail(v)){
  return 'this value is import!!';
}
}
passwordValiation(String v){
if(v.length<6){
  return 'this value is import!!';
}
}

signUp()async{
if(signUpKey.currentState!.validate()){
 UserCredential? userCredential=await AuthHelper.authHelper.signUp(emailController.text, passwordeController.text);
if(userCredential!=null){
  AppRoute.navigationpushReplacementWidget(allCategorie());
}
}
emailController.clear();
passwordeController.clear();
}


signIn()async{
if(signInKey.currentState!.validate()){
 UserCredential? userCredential=await AuthHelper.authHelper.signIn(emailController.text, passwordeController.text);
if(userCredential!=null){
  AppRoute.navigationpushReplacementWidget(allCategorie());
 // AppRoute.popRoute();
   


  
}
}

emailController.clear();
passwordeController.clear();

}
signOut(){
  AuthHelper.authHelper.signOut();
}
checkUser(){
  AuthHelper.authHelper.checkUser();
}


Future  forgetPassword()async{
  if(changeKey.currentState!.validate()){

 await AuthHelper.authHelper.forgetPassword(changePasswordeController.text);
  }
}
}