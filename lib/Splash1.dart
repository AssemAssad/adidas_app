import 'package:flutter/material.dart';

import 'Splash2.dart';

class Splash1 extends StatefulWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
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
                          image: AssetImage('assets/images/shoes2.jpg'),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                top: 560,
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
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
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text: "Let's ",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'NotoSerifToto',
                            color: Color.fromRGBO(51, 54, 72, 1),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Fulfill Your Fashion\n',
                              style: TextStyle(
                                color: Color.fromRGBO(23, 88, 150, 1),
                                fontSize: 20,
                                fontFamily: 'NotoSerifToto',
                              ),
                            ),
                            TextSpan(
                              text: 'Needs With Adidas Right Now',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'NotoSerifToto',
                                color: Color.fromRGBO(51, 54, 72, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromRGBO(23, 88, 150, 1),
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
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                              builder: (context) => Splash2(),
                            ));
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                                fontFamily: 'NotoSerifToto',
                                color: Colors.grey[200],
                                fontSize: 18.0),
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
