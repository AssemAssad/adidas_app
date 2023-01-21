import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/widgets/widget_admin/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class categories_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: 
      Consumer<FirestoreProvider>(builder: (x, provider, y) {
        return provider.categories == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: provider.categories.length,
                itemBuilder: (context, index) {
                  return categoryWidget(provider.categories[index]);
                });
      }),
    );
  }
}
