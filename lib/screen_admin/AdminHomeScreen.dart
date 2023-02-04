import 'package:adidas_app/data/auth_helper.dart';
import 'package:adidas_app/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const Text('Home'),

      ),
      body: Center(child: IconButton(onPressed: (){
          Provider.of<AuthProvider>(context,listen: false).signOut();

      },
      icon: Icon(Icons.checklist),
      )),
    );
  }
}
