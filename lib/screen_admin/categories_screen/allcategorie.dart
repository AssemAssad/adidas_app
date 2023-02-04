import 'package:adidas_app/provider/auth_provider.dart';
import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/categories_screen/add_categorie.dart';
import 'package:adidas_app/screen_admin/product_Screens/allProduct.dart';
import 'package:adidas_app/widgets/widget_admin/category_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class allCategorie extends StatelessWidget {
  //1-  0xff201E2A
  //0xffFB4041

  //3- 0xff404355
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,

      appBar: AppBar(
        actions:[
          InkWell(
          onTap: ()async{
           await Provider.of<AuthProvider>(context,listen: false).signOut();
          },
          child: Icon(Icons.output_rounded)),
     SizedBox(width: 20,) 
        ] , 
         backgroundColor: Colors.blue.shade800
,
        //1-  0xff201E2A
        //0xffFB4041

        //3- 0xff404355
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      
      ),
      body:
        Padding(
          padding: const EdgeInsets.all(8.8),
          child: Consumer<FirestoreProvider>(builder: (x, provider, y) {
          return provider.categories.isEmpty
              ?  Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: const CircularProgressIndicator(strokeWidth: 6.2,),
                    decoration: const BoxDecoration(
                   ),),
                )
              : Container(
                margin:const EdgeInsets.only(bottom: 11),
                child: RefreshIndicator(
                  onRefresh: _refresh,
                  child:
                   ListView.builder(
                      itemCount: provider.categories.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){

                            provider.getAllProduct(provider.categories[index].id.toString());
                         //  AppRoute.navigationWidget(AddProduct(provider.categories[index].id.toString()));
          AppRoute.navigationWidget(allProduct(provider.categories[index].id.toString()));

                          },
                          child:
                           categoryWidget(provider.categories[index])
                           );
                      }),
                ),
              );
      }),
        ),
 
   
      floatingActionButton: TextButton(
        onPressed: () {
          AppRoute.navigationWidget(Add_categoreis());
          Provider.of<FirestoreProvider>(context,listen: false).categoryNameController.clear();
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
    return await Future.delayed(const Duration(seconds: 3));
  }