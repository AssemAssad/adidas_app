import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/categories_screen/allcategorie.dart';
import 'package:adidas_app/screen_admin/product_Screens/add_product.dart';
import 'package:adidas_app/screen_admin/product_Screens/details_product.dart';
import 'package:adidas_app/widgets/widget_admin/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class allProduct extends StatelessWidget {
  String id;
  allProduct(this.id);
  //1-  0xff201E2A
  //0xffFB4041

  //3- 0xff404355
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  Colors.blue.shade800,
       
        title: const Text(
          'Product',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body:
        Consumer<FirestoreProvider>(builder: (x, provider, y) {
        return provider.products.isEmpty 

            ? Center(
                child:  Image.asset('assets/images/cubes_empty.gif',fit: BoxFit.cover,),
              )
            : Container(
              margin: EdgeInsets.only(bottom: 11),
              child: RefreshIndicator(
                onRefresh: _refresh,
                child: ListView.builder(
                    itemCount: provider.products!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
   AppRoute.navigationWidget(Details_Product(provider.products[index],id));
                        },
                        //
                        child:

                         product_Widget(provider.products[index],id));
                    }),
              ),
            );
      }),
 
   
      floatingActionButton: TextButton(
        onPressed: () {
          AppRoute.navigationWidget(AddProduct(id));
                    Provider.of<FirestoreProvider>(context,listen: false).nameProductController.clear();
                    Provider.of<FirestoreProvider>(context,listen: false).sizeProductController.clear();
                    Provider.of<FirestoreProvider>(context,listen: false).colorProductController.clear();
                    Provider.of<FirestoreProvider>(context,listen: false).typeProductController.clear();
                    Provider.of<FirestoreProvider>(context,listen: false).priceProductController.clear();

        },
        child:  CircleAvatar(
          radius: 30,
          child:  Icon(
            Icons.add,
            size: 35,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue.shade600,
        ),
      ),
    );
  }
}
 Future<void> _refresh()async{
    return await Future.delayed(Duration(seconds: 3));
  }