
import 'package:adidas_app/auth_screen/SplashScreen.dart';
import 'package:adidas_app/firebase_options.dart';
import 'package:adidas_app/home_page/HomeScreen.dart';
import 'package:adidas_app/provider/auth_provider.dart';
import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  
  runApp( 
    MultiProvider(providers: [
  
 ChangeNotifierProvider<FirestoreProvider>(
create: (context)=>FirestoreProvider(),),
 ChangeNotifierProvider<AuthProvider>(
create: (context)=>AuthProvider(),),
    ],
    child:  MyApp(),
      ));
  
    
   
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: AppRoute.navkey,
        home:Builder(
          builder: (context) {
            return HomeScreen();
          }
        ) ,
        debugShowCheckedModeBanner: false,
       
      
    );
  }
}
