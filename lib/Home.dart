import 'package:flutter/material.dart';

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
      drawer: Drawer(),
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
                                backgroundImage: AssetImage('assets/images/adidas.png'),
                                radius: 25,
                              ),
                              const SizedBox(height: 8,),
                              Text('Adidas',style: TextStyle(color:Color.fromRGBO(23, 88, 150, 1),fontFamily:'NotoSerifToto',fontWeight: FontWeight.bold ),)
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

            ],
          ),

        ],
      ),
    );
  }
}
