import 'dart:developer';
import 'dart:io';

import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/categories_screen/allcategorie.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class Add_categoreis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Consumer<FirestoreProvider>(builder: (context, provider, x) {
      return Scaffold(
        appBar: AppBar(
         backgroundColor: Colors.blue.shade800
,          title: const Text(
            'Add Categorie',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15,right: 15),
              child: Column(children: [
            provider.selectedImage == null
                ? TextButton(
                    onPressed: () {
                      
                      provider.SelectImage();
                    },
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade500,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Add Image Categorie',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ))
                : Container(
                        height: 300,
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(image: FileImage(provider.selectedImage!),fit: BoxFit.cover)
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
              height: 50,
            ),
            TextField(
              controller: provider.categoryNameController,
              
              decoration: const InputDecoration(

                  labelText: 'Name Categorie',
                  labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),
          
                  prefixIcon: Icon(
                    Icons.category_outlined,
                    color: Color.fromRGBO(23, 88, 150, 1),size: 25,
                  ),
                  border: OutlineInputBorder()),
            ),
              const    SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () {
                 
                    provider.addNewCategory();
               
                },
                child: Container(
            width: double.infinity,
            height: 70,
                  decoration: BoxDecoration(
                          color:  Colors.blue.shade500
                    ,borderRadius: BorderRadius.circular(15)),
                  child: Center(child: Text('Add New Categorie',style: TextStyle(
                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                )        ])),
        ),
      
      );
    });
  }
}
