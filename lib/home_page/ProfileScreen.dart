import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Profile',
          style: const TextStyle(
              color: Colors.black54,
              fontFamily: 'NotoSerifToto',
              fontWeight: FontWeight.bold
          ),

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0,),
                  CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.grey[300],
                    backgroundImage: AssetImage('assets/images/killua.png'),
                  ),
                  SizedBox(height: 5.0,),
                  Text('Assem Asaad',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(color:Colors.black54, height: 1.0,margin: EdgeInsets.only(right:20,left:20),),
            SizedBox(height: 10.0,),
            ListTile(
              onTap: () {

              },
              leading: Icon(Icons.home,color: Color.fromRGBO(23, 88, 150, 1),),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {
              },
              leading: Icon(Icons.book,color: Color.fromRGBO(23, 88, 150, 1),),
              title: Text('Course'),
            ),
            ListTile(
              onTap: () {

              },
              leading: Icon(Icons.newspaper,color: Color.fromRGBO(23, 88, 150, 1),),
              title: Text('News'),
            ),
            ListTile(
              onTap: () {

              },
              leading: Icon(Icons.account_balance,color: Color.fromRGBO(23, 88, 150, 1),),
              title: Text('Products'),
            ),
            ListTile(
              onTap: () {

              },
              leading: Icon(Icons.shopping_cart,color: Color.fromRGBO(23, 88, 150, 1),),
              title: Text('Cart'),
            ),
            ListTile(
              onTap: () {

              },
              leading: Icon(Icons.perm_identity,color: Color.fromRGBO(23, 88, 150, 1),),
              title: Text('My Profile'),
            ),
            ListTile(
              onTap: () {

              },
              leading: Icon(Icons.settings,color: Color.fromRGBO(23, 88, 150, 1),),
              title: Text('Setting'),
            ),
            ListTile(
              onTap: () {

              },
              leading: Icon(Icons.login,color: Color.fromRGBO(23, 88, 150, 1),),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
