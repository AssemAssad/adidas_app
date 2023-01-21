import 'dart:io';

import 'package:adidas_app/data/firestore_helper.dart';
import 'package:adidas_app/data/storage_helper.dart';
import 'package:adidas_app/model/model_category.dart';
import 'package:adidas_app/model/model_product.dart';
import 'package:adidas_app/model/order_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class FirestoreProvider extends ChangeNotifier {

  FirestoreProvider() {
   
    getAllcategories(); 
    notifyListeners();
    getAllorders();
   // FirestoreHelper.firestoreHelper.getAllOrder();
  }
  TextEditingController categoryNameController = TextEditingController();
  File? selectedImage;

  TextEditingController nameProductController = TextEditingController();
  TextEditingController priceProductController = TextEditingController();
  TextEditingController sizeProductController = TextEditingController();
  TextEditingController typeProductController = TextEditingController();
  TextEditingController colorProductController = TextEditingController();
  

  TextEditingController nameOrderController = TextEditingController();
  TextEditingController priceOrderController = TextEditingController();
  TextEditingController sizeOrderController = TextEditingController();
  TextEditingController colorOrderController = TextEditingController();
  TextEditingController typeOrderController = TextEditingController();
  TextEditingController imageOrderController = TextEditingController();

  File? selectedImageProduct;

  List<Category> categories = [];
  List<Product> products = [];
  List<Order_user> orders = [];
  SelectImage() async {
    XFile? xFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    selectedImage = File(xFile!.path);
    notifyListeners();
  }

  addNewCategory() async {
    if (selectedImage != null) {
      String urlImage =
          await StorageHelper.storageHelper.uploadImage(selectedImage!);
      Category category =
          Category(image: urlImage, name: categoryNameController.text);
      Category newcategory =
          await FirestoreHelper.firestoreHelper.addCategore(category);
          selectedImage=null;        categoryNameController.clear();

      categories.add(newcategory);

      // getAllcategories();
notifyListeners();
    }
  }

  getAllcategories() async {
    categories = await FirestoreHelper.firestoreHelper.getAllcategoy();
    
    notifyListeners();
  }

  deleteCategorie(Category category) async {
    FirestoreHelper.firestoreHelper.deleteCategory(category);
    categories.removeWhere((element) => element.id == category.id);
    notifyListeners();
  }

  updateCategorie(Category category) async {
    String? urlImage;
    if (selectedImage != null) {
      urlImage = await StorageHelper.storageHelper.uploadImage(selectedImage!);
    }
    Category newcategory = Category(
        image: urlImage ?? category.image, name: categoryNameController.text);
    newcategory.id = category.id;
    await FirestoreHelper.firestoreHelper.updateCategory(newcategory);
    //
    int indexcategore = categories.indexOf(
      categories
          .where(
            (element) => element.id == category.id,
          )
          .first,
    );
    categories[indexcategore] = newcategory;
    //  getAllcategories();
      selectedImage=null;
    notifyListeners();    
   //     categoryNameController.clear(); 

  }


  SelectImageProduct() async {
    XFile? xFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    selectedImageProduct = File(xFile!.path);
    notifyListeners();
  }


  addNewProduct( String id) async {
    if (selectedImageProduct != null) {
      String urlImage =
          await StorageHelper.storageHelper.uploadImage(selectedImageProduct!);
       Product product = Product(
          image: urlImage,
          name: nameProductController.text,
          price: priceProductController.text,
       
          size: sizeProductController.text,
          color: colorProductController.text,
          
          type: typeProductController.text,
          );
      Product newProduct =
          await FirestoreHelper.firestoreHelper.addNewProduct(product, id);
          selectedImageProduct=null;
         nameProductController.clear();
         priceProductController.clear();
         sizeProductController.clear();
         colorProductController.clear();
         typeProductController.clear();
         
      products.add(newProduct);
      getAllProduct(id);
notifyListeners();
      // getAllcategories();

    }
  }

  getAllProduct(String id) async {
    products = await FirestoreHelper.firestoreHelper.getAllProduct(id);
  
    notifyListeners();
  }

  deleteProduct(Product product,String id) async {
    await FirestoreHelper.firestoreHelper.deleteProduct(product, id);
    getAllProduct(id);
   
    
  }
  
  updateProduct(Product product,String id) async {
    String? urlImage;
    if (selectedImageProduct != null) {
      urlImage = await StorageHelper.storageHelper.uploadImage(selectedImageProduct!);
    }
    Product newProduct =  Product(
          image: urlImage?? product.image,
          name: nameProductController.text,
          price: priceProductController.text,
          size: sizeProductController.text,
          type: typeProductController.text,
          color: colorProductController.text,
          );
    newProduct.id = product.id;
    await FirestoreHelper.firestoreHelper.updateProduct(newProduct,id);
    //
   /**  int indexproduct = products.indexOf(
      products
          .where(
            (element) => element.id == product.id,
          )
          .first,
    );
      products[indexproduct] = newProduct;
**/
    //  getAllcategories();
     
    getAllProduct(id);
 //   notifyListeners();
  }

 addOrder() async {
  
        Order_user orderuser=Order_user(

                 image: imageOrderController.text,
          name: nameOrderController.text,
          price: priceOrderController.text,
          size: sizeOrderController.text,
          type: typeOrderController.text,
          color: colorOrderController.text,
             
        
    
    );

          
     
      Order_user neworder =
          await FirestoreHelper.firestoreHelper.addOrder(orderuser);
      orders.add(neworder);
      return neworder;
    //  getAllProduct(order_user.id);

    }
   getAllorders() async {
    orders = await FirestoreHelper.firestoreHelper.getAllOrder();
    
    notifyListeners();
  }
   deleteOrder(Order_user order_user) async {
   await FirestoreHelper.firestoreHelper.deleteOrder(order_user);
        orders.removeWhere((element) => element.id == order_user.id);
notifyListeners();
getAllorders();

  }
  }


