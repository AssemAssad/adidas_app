import 'package:adidas_app/model/model_category.dart';
import 'package:adidas_app/provider/firestore_provider.dart';
import 'package:adidas_app/route/router.dart';
import 'package:adidas_app/screen_admin/categories_screen/update_categorie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class categoryWidget extends StatelessWidget {
  Category category;
  categoryWidget(this.category);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<FirestoreProvider>(builder: (context, provider, x) {
        return Container(
   //   margin: EdgeInsets.all(27),
          child:    
           Container(
            height: 320,
              margin: EdgeInsets.only(left: 11,right: 11,top: 11,bottom: 11),
                     decoration: BoxDecoration(
                      color: Colors.white,
                          boxShadow:  [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 3,
        offset: Offset(0, 2), // changes position of shadow
      ),
    ],
      
                    borderRadius: BorderRadius.circular(12),
                     ),
             child: 
             Column(
               children: [
category.image==null?
CircularProgressIndicator():
                 Container(
                    // width: double.infinity,
                    margin: EdgeInsets.all(12),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image:
                        
                        
                         DecorationImage(
                            image: NetworkImage(category.image),
                            fit: BoxFit.cover)),
                    child: Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:  [
                    const      SizedBox(
                            height: 35,
                          ),
                          TextButton(
                            onPressed: (){
                              provider.deleteCategorie(category);
                              
                            },
                            child:const CircleAvatar(
                              radius: 25,
                              child: Icon(

                                Icons.delete_forever_rounded,
                                color: Colors.white,
                              ),
                              backgroundColor: Color(0xffFB4041),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextButton (
                            onPressed: (){     

Provider.of<FirestoreProvider>(context,listen: false).categoryNameController.text=category.name;

                              AppRoute.navigationWidget(update_categorei_Screen(category)); 


                            },
                            child: CircleAvatar(
                              radius: 25,
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.blue.shade500 ,
                            ),
                          )
                        ],
                      ),
                    )),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center
          ,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(category.name,style: TextStyle(fontSize: 26,fontWeight: 
            FontWeight.bold,color: Colors.blue.shade700),),
          ],
        )
            ],
             ),
           ),
   
        );
      }
    );
  }
}
