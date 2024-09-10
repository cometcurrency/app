import 'package:cometdev/categories/fashion.dart';
import 'package:cometdev/categories/food.dart';
import 'package:cometdev/categories/haircare.dart';
import 'package:cometdev/categories/skincare.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class catpage extends StatefulWidget {
  const catpage({super.key});

  @override
  State<catpage> createState() => _catpageState();
}

class _catpageState extends State<catpage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  List<String> catnames = [
    "Fashion",
    "Skincare",
    'Food & Alcohol',
    'Haircare & Spa'
  ];
  List<String> assetnames = [
    "fashion.png",
    "skincare.png",
    "food.png",
    "haircare.png"
  ];
  List<Widget> assetwidgets = [Fashion(), Skincare(), Food(), Haircare()];
  List<String> bnames = [
    'b1.png',
    'b2.png',
    'b3.png',
    'b4.png',
    'b5.png',
    'b6.png',
    'b7.png',
    'b8.png'
  ];
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width*0.05, right: width*0.05, top: height*0.05),
      child: Container(
        child: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Material(
              child: Container(
                decoration: BoxDecoration(
                color: HexColor("F7F5F2")
                ),
                child: GridView.count(
                  crossAxisSpacing: width*0.05,
                   mainAxisSpacing: height*0.02,
                  crossAxisCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(catnames.length, (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => assetwidgets[index]),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(25),
                            elevation: 2,
                            child: Container(
                              width: width*0.5,
                              height: height*0.25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.white,
                                  shape: BoxShape.rectangle),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  "assets/ss/" + assetnames[index],
                                  height: height*0.23,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              left: width*0.05,
                              top: height*0.012,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  catnames[index],
                                  style: GoogleFonts.nunitoSans(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ))
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
            SizedBox(height: height*0.02,),
            Text(
              "Brands that stand behind us ",
              style: GoogleFonts.nunitoSans(
                color:HexColor("390042"),
                fontSize: 23
                ),
            ),
            Container(
              child: GridView.count(
                childAspectRatio: 3 / 2,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                padding: EdgeInsets.zero,
                children: List.generate(bnames.length, (index) {
                  return Padding(
                    padding: EdgeInsets.only(top: height*0.02),
                    child: SizedBox(
                        height: height*0.2,
                        width: width*0.5,
                        child: Image.asset("assets/brands/" + bnames[index])),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
