import 'package:adidas_app/model/model_product.dart';
import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/product_Screens/allProduct.dart';
import 'package:adidas_app/widgets/widget_admin/details_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Details_Product extends StatelessWidget {
  String id;
  Product product;
  Details_Product(this.product,this.id);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return    Consumer<FirestoreProvider>(builder: (x, provider, y) {

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: .5,
            backgroundColor: Colors.blue.shade800,
            centerTitle: true,
            title: const Text(
            'Details Product',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        
          ),
          body: provider.products.isEmpty 

            ? Center(
                child:  Image.asset('assets/images/cubes_empty.gif',fit: BoxFit.cover,),
              ):  

                         details_widget(product,id)
                    
                     );
      }
    );
  }
}
