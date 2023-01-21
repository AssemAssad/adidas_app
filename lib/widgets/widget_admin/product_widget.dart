import 'package:adidas_app/model/model_product.dart';
import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/product_Screens/update_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class product_Widget extends StatelessWidget {
  Product product;
  String id;
  product_Widget(this.product, this.id);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<FirestoreProvider>(builder: (context, provider, x) {
      return Container(
        //   margin: EdgeInsets.all(27),
        child: Container(
          height: 220,
          margin: EdgeInsets.only(left: 11, right: 11, top: 11),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:  [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 3,
        offset: Offset(0, 2), // changes position of shadow
      ),
    ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      // width: double.infinity,
                      margin: EdgeInsets.all(12),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                              image: NetworkImage(product.image),
                              fit: BoxFit.contain)),
                      child: Container(
                        margin: EdgeInsets.only(right: 15),
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Row(
                        children: [
                          Text('color: ',   style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),),
                          Text(
                            product.color,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                                  Text('size: ',   style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),),
                  
                          Text(
                            product.size,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                                  Text('type: ', 
                                 
                                  
softWrap: false,                                    style: TextStyle(

                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),),
                  
                          Text(
                            product.type,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                                Text('Price: ',   style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),),
                  
                          Text(
                            product.price,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      provider.deleteProduct(product, id);
                    },
                    child: Container(
                   width: 170,
                      height: 50,
                      child: Center(child: Text('Delete',   style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red.shade500),)
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      Provider.of<FirestoreProvider>(context, listen: false)
                          .nameProductController
                          .text = product.name;
                      Provider.of<FirestoreProvider>(context, listen: false)
                          .colorProductController
                          .text = product.color;
                      Provider.of<FirestoreProvider>(context, listen: false)
                          .typeProductController
                          .text = product.type;
                      Provider.of<FirestoreProvider>(context, listen: false)
                          .sizeProductController
                          .text = product.size;
                      Provider.of<FirestoreProvider>(context, listen: false)
                          .priceProductController
                          .text = product.price;

                      AppRoute.navigationWidget(update_Product(product, id));
                    },
                    child:
      Container(
                      width: 170,
                      height: 50,
                      child: Center(child: Text('Edit',   style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue.shade500),
                        )     
                                   )
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
