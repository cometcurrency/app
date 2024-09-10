import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ad_gridview/ad_gridview.dart';

class Shopscreen extends StatefulWidget {
  const Shopscreen({super.key});

  @override
  State<Shopscreen> createState() => _ShopscreenState();
}

class _ShopscreenState extends State<Shopscreen> {
  List brands = [0, 1, 2, 3, 4, 5, 6, 7];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 40.0),
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Stack(
                      children: [
                        InkWell(
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 5,
                                )
                              ],
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  "assets/ss/fashion.png",
                                  height: 150,
                                )),
                          ),
                        ),
                        const Positioned(
                            top: 10,
                            left: 10,
                            child: Text(
                              "Fashion",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Stack(
                      children: [
                        InkWell(
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 5,
                                )
                              ],
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset("assets/ss/haircare.png"),
                          ),
                        ),
                        const Positioned(
                            top: 10,
                            left: 10,
                            child: Text("Haircare & Spa",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Stack(
                      children: [
                        InkWell(
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 5,
                                )
                              ],
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset("assets/ss/food.png")),
                          ),
                        ),
                        const Positioned(
                            top: 10,
                            left: 10,
                            child: Text("Food & Alcohol",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)))
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Stack(
                      children: [
                        InkWell(
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 5,
                                )
                              ],
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset("assets/ss/skincare.png"),
                          ),
                        ),
                        const Positioned(
                            top: 10,
                            left: 10,
                            child: Text("Skincare",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold)))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),

        //brands that stands with usx
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Brands that stands with us",
            style: TextStyle(fontSize: 20),
          ),
        ),

        // Expanded(
        // child: GridView.count(
        // crossAxisCount: 2,
        // children: List.generate(3, (index){
        // return Text("$index");
        // }),
        // ),
// )
      ],
    );
  }
}
