import 'package:flutter/material.dart';

import '../const/const.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
          child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50.0),
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
          ),
          SizedBox(height: 20.0,),
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
      )),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          icon: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset('assets/images/killua.png',fit: BoxFit.cover),
            ),
          ),
        ),
        title: Text(
          'Home',
          style: const TextStyle(
              color: Colors.black54,
              fontFamily: 'NotoSerifToto',
              fontWeight: FontWeight.bold
          ),

        ),
        actions: const [
          Icon(Icons.notifications_none,color:Colors.black54),
          SizedBox(width: 5,),
          Icon(Icons.favorite_border,color:Colors.black54),
          SizedBox(width: 15,)
        ],
      ),
      body:  ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text('Hello Assem',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'NotoSerifToto',
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(23, 88, 150, 1),
                    ),),
                  SizedBox(height: 10,),
                  Text('Lets shop something!',
                    style: TextStyle(color: Colors.black54),),
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              // Container(  search box
              //   width: double.infinity,
              //   height: 40,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.all(Radius.circular(8)),
              //     color: Colors.grey[400],
              //   ),
              //   child: TextFormField(
              //
              //     decoration: const InputDecoration(
              //         prefixIcon: Icon(Icons.search_outlined),
              //     hintText: 'Search',
              //     helperStyle: TextStyle(fontFamily: 'NotoSerifToto',color: Colors.black54),
              //     border: InputBorder.none,
              //     suffixIcon: Icon(Icons.filter_list)),
              //   )
              // ),
              const SizedBox(height: 20,),
              Container(
                margin:const EdgeInsets.only(top: 2),
                width: double.infinity,
                height: 160,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                        },
                        child:
                        Container(
                          margin:const EdgeInsets.only(right: 10),
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                              image:const DecorationImage(
                                  image: AssetImage('assets/images/shoes4.jpg'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 20,),
              const Text(
                'Top Categories',
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'NotoSerifToto',
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                margin:const EdgeInsets.only(top: 2),
                width: double.infinity,
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                        },
                        child:
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                child: ImageIcon(AssetImage('assets/images/nike.png'),color: Colors.grey[700],size: 24),
                                backgroundColor: Colors.grey[200],
                                radius: 25,
                              ),
                              const SizedBox(height: 8,),
                              Text('Adidas',style: TextStyle(color:Colors.grey,fontFamily:'NotoSerifToto',fontWeight: FontWeight.bold ),)
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 10,),
              const Text(
                'Most Popular',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'NotoSerifToto',
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                  padding: EdgeInsets.only(right: 15.0),
                  width: MediaQuery.of(context).size.width - 30.0,
                  height: MediaQuery.of(context).size.height - 50.0,
                  child: GridView.count(
                    crossAxisCount: 2,
                    primary: false,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 15.0,
                    childAspectRatio: 0.8,
                    children: <Widget>[
                      buildCard('adidas court ', '\$30.99', 'assets/images/blue.png',
                          false, false,context),
                      buildCard('adidas court', '\$50.99', 'assets/images/blue.png',
                          true, false, context),
                      buildCard('adidas court', '\$10.99',
                          'assets/images/blue.png', false, true, context),
                      buildCard('adidas court', '\$20.99', 'assets/images/blue.png',
                          false, false, context)
                    ],
                  )),

        ],
      ),
      ],
    )
    );

  }
}
