import 'package:flutter/material.dart';

import '../screen_admin/HomeScreen.dart';

class Splash3 extends StatelessWidget {
  const Splash3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 600,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/shoes5.jpg'),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                top: 560,
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: 'Your Satisfaction ',
                          style: TextStyle(
                              color: Color.fromRGBO(23, 88, 150, 1),
                              fontSize: 20,
                              fontFamily: 'NotoSerifToto',
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Is Our \n Number One Priority',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'NotoSerifToto',
                              color: Color.fromRGBO(51, 54, 72, 1),
                            ),
                            ),
                            ],
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromRGBO(23, 88, 150, 1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromRGBO(23, 88, 150, 1),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontFamily: 'NotoSerifToto',
                                color: Colors.grey[200], fontSize: 18.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

// return Scaffold(
//   backgroundColor: const Color.fromRGBO(207,207,207,1),
//   body: Stack(
//     fit: StackFit.expand,
//     children: [
//       Container(
//           width: double.infinity,
//           height: 220,
//           color: Colors.indigo,
//           child: const Image(image: AssetImage('assets/images/shoes5.jpg'),fit: BoxFit.cover,)
//       ),
//       Positioned(
//         top: 550,
//         left:0, //set left 0, to start without margin at left
//         right:0,
//         child: Container(
//           width: double.infinity,
//           height: 190,
//           decoration: const BoxDecoration(
//             color: Color.fromRGBO(214,214,214,1),
//             borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(10)),
//           ),
//           child:
//           Column(
//             children: [
//               const Padding(
//                 padding: EdgeInsets.only(top: 20,left: 25,right: 25,bottom: 15),
//                 child: Text(
//                   "Your Satisfaction Is Our \n Number One Priority",
//                   textAlign:TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 22,
//                     color: Color.fromRGBO(51,54,72,1),
//                   ),
//
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 12,
//                     height: 12,
//                     margin: const EdgeInsets.only(left: 5,right: 5),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(50),
//                       color: Colors.grey,
//                     ),),
//                   Container(
//                     width: 12,
//                     height: 12,
//                     margin: EdgeInsets.only(left: 5,right: 5),
//
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: Colors.grey,
//                     ),),
//                   Container(
//                     width: 12,
//                     height: 12,
//                     margin: EdgeInsets.only(left: 5,right: 5),
//
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: const Color.fromRGBO(23,88,150,1),
//                     ),),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Container(
//                   width: double.infinity,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                     color: const Color.fromRGBO(23,88,150,1),
//                   ),
//                   child: MaterialButton(
//                     onPressed: () {
//                       Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (context) => HomeScreen(),));
//
//                     },
//                     child: Text(
//                       'Next',
//                       style: TextStyle(
//                           color: Colors.grey[200],
//                           fontSize: 18.0
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   ),
// );
