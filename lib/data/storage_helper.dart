import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class StorageHelper{
  static StorageHelper storageHelper=StorageHelper();
  FirebaseStorage firebaseStorage =FirebaseStorage.instance;

 Future<String> uploadImage(File file)async{
String filename=file.path.split('/').last;
Reference reference= firebaseStorage.ref(filename);
 TaskSnapshot taskSnapshot=await reference.putFile(file);
String imageUrl=await reference.getDownloadURL();

 return imageUrl;

  }
  }