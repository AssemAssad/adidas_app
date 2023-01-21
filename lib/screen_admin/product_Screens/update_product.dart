import 'dart:developer';
import 'dart:io';

import 'package:adidas_app/model/model_product.dart';
import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/categories_screen/allcategorie.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class update_Product extends StatelessWidget {
  Product product;
  String id;
  update_Product(this.product,this.id);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Consumer<FirestoreProvider>(builder: (context, provider, x) {
      return Scaffold(
        appBar: AppBar(
         backgroundColor:  Colors.blue.shade800,
          title: const Text(
            'Update Product',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 15,right: 15),
            child: SingleChildScrollView(
              child: Column(children: [
                      provider.selectedImageProduct == null
                ? TextButton(
                    onPressed: () {
                      provider.SelectImage();
                    },
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(image:  NetworkImage(product.image,),fit: BoxFit.cover
             ),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                      ),
                    ))
                : Container(
                        height: 200,
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: FileImage(provider.selectedImageProduct!),fit: BoxFit.cover)
                  ),
                
                ),
                      // TextButton(
                      //     onPressed: () async {
                      //       XFile? xFile = await ImagePicker()
                      //           .pickImage(source: ImageSource.gallery);
                      //       String url=await    StorageHelper.storageHelper.uploadImage(File(xFile!.path));
                      //    log(url);
                      //     },
                      //     child: Text('can test code (- _ -)')),
            
                     const SizedBox(
              height: 30,
                      ),
                      TextField(
              controller: provider.nameProductController,
              decoration: const InputDecoration(
                  labelText: 'Name Product',
                  labelStyle: TextStyle(fontSize: 18),
                    
               
                  border: OutlineInputBorder()),
                      ),
                
                     const SizedBox(
              height: 12,
                      ),
                TextField(
              controller: provider.sizeProductController,
              decoration: const InputDecoration(
                  labelText: 'size Product',
                  labelStyle: TextStyle(fontSize: 18),
                    
               
                  border: OutlineInputBorder()),
                      ),
                
                     const SizedBox(
              height: 12,
                      ),
                TextField(
              controller: provider.colorProductController,
              decoration: const InputDecoration(
                  labelText: 'color Product',
                  labelStyle: TextStyle(fontSize: 18),
                    
               
                  border: OutlineInputBorder()),
                      ),
                
                     const SizedBox(
              height: 12,
                      ),
                TextField(
              controller: provider.typeProductController,
              decoration: const InputDecoration(
                  labelText: 'type Product',
                  labelStyle: TextStyle(fontSize: 18),
                    
               
                  border: OutlineInputBorder()),
                      ),
                
                     const SizedBox(
              height: 12,
                      ),
                TextField(
                  keyboardType: TextInputType.number,
              controller: provider.priceProductController,
              decoration: const InputDecoration(
                  labelText: 'Price Product',
                  labelStyle: TextStyle(fontSize: 18),
                    
               
                  border: OutlineInputBorder()),
                      ),
          
                    
                  const    SizedBox(
              height: 20,
                      ),
                      TextButton(
                onPressed: () {
                 
                   provider.updateProduct(product,id);
                },
                child: Container(
                      width: double.infinity,
                      height: 70,
                  decoration: BoxDecoration(
                          color: Colors.blue.shade500
                    ,borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text('Update Product',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                )  
                ,
                   const    SizedBox(
              height: 20,
                      ),
                      ]),
            )),
      
      );
    });
  }
}
