import 'package:adidas_app/model/model_product.dart';
import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/product_Screens/update_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class details_widget extends StatelessWidget {
  String id;
  Product product;
  details_widget(this.product,this.id);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return    Consumer<FirestoreProvider>(builder: (x, provider, y) {

        return
        
       provider.products.isEmpty 

            ? Center(
                child:  Image.asset('assets/images/cubes_empty.gif',fit: BoxFit.cover,),
              ): Container(
            margin: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(product.image), fit: BoxFit.contain),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                const  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        
                        product.name,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff201E2A)),
                      ),
                      Spacer(),
                      Icon(
                        Icons.share,
                        size: 22,
                        color: Color(0xff201E2A),
                      )
                    ],
                  ),
               const  SizedBox(
                    height: 15,
                  ),         Row(
                    children: [
                      Spacer(),
                      Text(
                        product.price,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFB4041)),
                      ),
                      Icon(
                        Icons.monetization_on_outlined,
                        color: Color(0xffFB4041),
                      )
                    ],
                  ),
                  const Text(
                    'SPECIFICATIONS',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff201E2A)),
                  ),
                       const  SizedBox(
                    height: 15,
                  ),      Row(
                    children:  [
               const       Text(
                        'size',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
             const Spacer(),
                      Text(
                        product.size,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                     
                    ],
                  )
                     ,
                const  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children:  [
               const       Text(
                        'Color',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
             const Spacer(),
                      Text(
                        product.color,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                     
                    ],
                  )
                     ,     const  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children:  [
               const       Text(
                        'type',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
             const Spacer(),
                      Text(
                        product.type,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                     
                    ],
                  )
                     ,  const  SizedBox(
                    height: 15,
                  ),
           
           
                 Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            provider.deleteProduct(product, id);
                          },
                          child: Container(
                         width: 170,
                            height: 50,
                            child:  Center(child: Text('delete',   style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),),),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:const Color(0xffFB4041)),)
                        ),
                      const  SizedBox(
                          height: 15,
                        ),
                        TextButton(
                          onPressed: () {
                            Provider.of<FirestoreProvider>(context, listen: false)
                                .nameProductController
                                .text = product.name;
                            Provider.of<FirestoreProvider>(context, listen: false)
                                .colorProductController
                                .text = product.color;
                            Provider.of<FirestoreProvider>(context, listen: false)
                                .sizeProductController
                                .text = product.size;
                            Provider.of<FirestoreProvider>(context, listen: false)
                                .typeProductController
                                .text = product.type;
                            Provider.of<FirestoreProvider>(context, listen: false)
                                .priceProductController
                                .text = product.price;
             
                                
                            AppRoute.navigationWidget(update_Product(product, id));

                          },
                          child:
                      Container(
                            width: 170,
                            height: 50,
                            child: Center(child: Text('edit',   style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),),),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue.shade500),)                )
                      ],
                    ),
                     
                ],
              ),
            ),
          
        );
      }
    );
  }
}
