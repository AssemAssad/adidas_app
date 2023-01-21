import 'dart:developer';
import 'dart:io';

import 'package:adidas_app/model/model_category.dart';
import 'package:adidas_app/model/model_product.dart';
import 'package:adidas_app/model/order_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreHelper {

  FirestoreHelper._();
  static FirestoreHelper firestoreHelper = FirestoreHelper._();
  CollectionReference<Map<String, dynamic>> categoycollectionReference =
      FirebaseFirestore.instance.collection('categoys');

  CollectionReference<Map<String, dynamic>> ordercollectionReference =
    FirebaseFirestore.instance.collection('Order');


  Future<Category> addCategore(Category category) async {
    DocumentReference<Map<String, dynamic>> documentReference =
        await categoycollectionReference.add(category.toMap());
    category.id = documentReference.id;
    return category;
  }

  Future<List<Category>> getAllcategoy() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await categoycollectionReference.get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> queryDocumentSnapshot =
        querySnapshot.docs;
    List<Category> categoys = queryDocumentSnapshot.map((e) {
      Category category = Category.fromMap(e.data());
      category.id = e.id;
      //    print(category.name);
      return category;
    }).toList();
    return categoys;
  }

  deleteCategory(Category category) async {
    await categoycollectionReference.doc(category.id).delete();
  }

  updateCategory(Category category) async {
    await categoycollectionReference.doc(category.id).update(category.toMap());
  }

 Future<Product> addNewProduct(Product product, String id) async {
    DocumentReference<Map<String, dynamic>> documentReference =
        await FirebaseFirestore.instance
            .collection('categoys')
            .doc(id)
            .collection('products')
            .add(product.toMap());
            product.id=documentReference.id;
            return product;
  }

  Future<List<Product>> getAllProduct(String id) async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await FirebaseFirestore
        .instance
        .collection('categoys')
        .doc(id)
        .collection('products')
        .get();
    List<Product> products = querySnapshot.docs.map((e) {
    Map<String,dynamic>date=e.data(); 
   date['id']=e.id;
 
      Product product = Product.fromMap(date);
      
     
    //  product.id = ;
      return product;
    }).toList();
    return products;
  }

  updateProduct(Product product, String id) async {
    await FirebaseFirestore.instance
        .collection('categoys')
        .doc(id)
        .collection('products')
        .doc(product.id)
        .update(product.toMap());
  }

  deleteProduct(Product product, String id) async {
    await FirebaseFirestore.instance
        .collection('categoys')
        .doc(id)
        .collection('products')
        .doc(product.id)
        .delete();
  }

 Future<Order_user> addOrder(Order_user orderuser) async {
    DocumentReference<Map<String, dynamic>> documentReference =
        await ordercollectionReference.add(orderuser.toMap());

    orderuser.id = documentReference.id;
   

    return orderuser;
    
  }

  Future<List<Order_user>> getAllOrder() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await ordercollectionReference.get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> queryDocumentSnapshot =
        querySnapshot.docs;
    List<Order_user> orders = queryDocumentSnapshot.map((e) {

       Map<String,dynamic>date=e.data(); 
   date['id']=e.id;
  
      Order_user order_user = Order_user.fromMap(date);
  

      //    print(category.name);
      return order_user;
    }).toList();

    return orders;

  }

   deleteOrder(Order_user order_user) async {
    await ordercollectionReference.doc(order_user.id).delete();
    
  }

}
