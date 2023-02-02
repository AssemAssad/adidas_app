import 'dart:developer';
import 'dart:io';

import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/product_Screens/allProduct.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddProduct extends StatelessWidget {
  String id;

  AddProduct(this.id);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Consumer<FirestoreProvider>(builder: (context, provider, x) {
      return Scaffold(
        appBar: AppBar(
         backgroundColor:  Colors.blue.shade700,
          title:  Text(
            'Add Product',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade100,fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(children: [
                provider.selectedImageProduct == null
                    ? TextButton(
                        onPressed: () {
                          provider.SelectImageProduct();
                        },
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
         color:  Colors.blue.shade700,
                              borderRadius: BorderRadius.circular(12)),
                          child:  Center(
                            child: Text(
                              'Add Image In Product',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade100),
                            ),
                          ),
                        ))
                    : Container(
                        height: 250,
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image:
                                    FileImage(provider.selectedImageProduct!),
                                fit: BoxFit.contain)),
                      ),

                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: provider.nameProductController,
                  decoration: const InputDecoration(
                      labelText: 'Name Prodcut',
                      labelStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: provider.sizeProductController,
                  decoration: const InputDecoration(
                      labelText: 'size Prodcut',
                      labelStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: provider.colorProductController,
                  decoration: const InputDecoration(
                      labelText: 'color Prodcut',
                      labelStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: provider.typeProductController,
                  decoration: const InputDecoration(
                      labelText: 'type Prodcut',
                      labelStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder()),
                ),

                const SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: provider.priceProductController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Price Prodcut',
                      labelStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder()),
                ),

                
    
                //
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    provider.addNewProduct(id);
                    
                  },
                  child: Container(
                    width: double.infinity,
                    height: 65,
                    decoration: BoxDecoration(
         color:  Colors.blue.shade700,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Text(
                      'Add New Product',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade100),
                    )),
                  ),
                )
              ])),
        ),
      );
    });
  }
}
