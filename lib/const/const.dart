import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../home_page/ShoesDetail.dart';

final defaultPinTheme = PinTheme(
  width: 50,
  height: 50,
  textStyle: TextStyle(fontSize: 20, color: Colors.black45, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.black12),
    borderRadius: BorderRadius.circular(10),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Colors.grey[300],
  ),
);
// , List size,List color,String description,
Widget buildCard(String name, String price, String imgPath, bool added,
    bool isFavorite,context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ShoesDetail(
                    assetPath: imgPath,
                    shoesprice:price,
                    shoesname: name,
                )));
          },
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ],
                  color: Colors.grey[300]),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          isFavorite
                              ? Icon(Icons.favorite,size: 21, color: Color(0xFFEF7532))
                              : Icon(Icons.favorite_border,size: 21,
                              color: Color(0xFFEF7532))
                        ])),
                Hero(
                    tag: imgPath,
                    child: Container(
                        height: 75.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(imgPath),
                                fit: BoxFit.contain)))),
                SizedBox(height: 7.0),
                Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                Text(price,
                    style: TextStyle(
                        color: Color(0xFFCC8053),
                        fontFamily: 'Varela',
                        fontSize: 14.0)),
                Text(name,
                    style: TextStyle(
                        color: Color(0xFF575E67),
                        fontFamily: 'Varela',
                        fontSize: 14.0)),

                // Padding(
                //     padding: EdgeInsets.only(left: 5.0, right: 5.0),
                //     child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         children: [
                //           if (!added) ...[
                //             Icon(Icons.shopping_basket,
                //                 color: Color(0xFFD17E50), size: 12.0),
                //             Text('Add to cart',
                //                 style: TextStyle(
                //                     fontFamily: 'Varela',
                //                     color: Color(0xFFD17E50),
                //                     fontSize: 12.0))
                //           ],
                //           if (added) ...[
                //             Icon(Icons.remove_circle_outline,
                //                 color: Color(0xFFD17E50), size: 12.0),
                //             Text('3',
                //                 style: TextStyle(
                //                     fontFamily: 'Varela',
                //                     color: Color(0xFFD17E50),
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: 12.0)),
                //             Icon(Icons.add_circle_outline,
                //                 color: Color(0xFFD17E50), size: 12.0),
                //           ]
                //         ]))
              ]))));
}