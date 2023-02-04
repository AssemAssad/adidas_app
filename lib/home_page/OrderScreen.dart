

import 'package:flutter/material.dart';
import '../const/map.dart';
import '../theme/color.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}


class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Order',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: getBody(size),
    );
  }

  Widget getBody(size) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 15),
      children: [
        SizedBox(height: 20),
        Text(
          "My Shopping",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
          ),
        ),
        SizedBox(height: 15),
        Column(
          children: List.generate(myShoppings.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    height: 110,
                    width: (size.width - 30) * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(myShoppings[index]['imageUrl']),
                          fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 110,
                    width: (size.width - 30) * 0.50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          myShoppings[index]['name'],
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${myShoppings[index]['price']}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),
                            ),
                            Text(
                              "x${myShoppings[index]['qty']}",
                              style: TextStyle(fontSize: 13, color: grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total",
              style: TextStyle(
                  fontSize: 16,
                  color: grey
              ),
            ),
            Text(
              "\$770.00",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16
              ),
            )
          ],
        ),
        SizedBox(height: 50),
        Center(
          child: InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {},
            child: Container(
              height: 45,
              width: size.width * 0.35,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: blue
                ),
                child: Text(
                  "Checkout",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: white
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}