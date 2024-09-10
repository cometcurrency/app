import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:cometdev/categories.dart';
import 'package:cometdev/controller/detailscontroller.dart';
import 'package:cometdev/profile/profile.dart';
import 'package:cometdev/tranpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:switcher_button/switcher_button.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:horizontal_list/horizontal_list.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homeone extends StatefulWidget {
  final NotchBottomBarController? controller;
  const Homeone({super.key, this.controller});

  @override
  State<Homeone> createState() => _HomeoneState();
}

class _HomeoneState extends State<Homeone> {
  String name = 'Vedanth';
  String cardvar1 = "XXXX";
  String cardvar2 = "XXXX";
  String cardvar3 = "XXXX";
  String cardvar4 = "XX-XX";

  String avatar = "assets/hs/avatar.png";
  Detailscontroller contr = Get.put(Detailscontroller());
  final List<Widget> _widgetOptions = [
    Homeone(),
    catpage(),
    Tranpage(),
  ];
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
 double width=MediaQuery.of(context).size.width;
    return Padding(
          padding: EdgeInsets.only(left: 5.0,right: 5),
          child: ListView(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        // Stack(
                        // children: <Widget>[
                        // Container(
                        //  height: 100,
                        //  width: 100,
                        // decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        // color: Colors.purple
                        // ),
                        // ),
                        // Positioned(
                        //
                        // child: Image.asset(avatar,height: 100,width: 100,))
                        // ],
                        // ),
                        SizedBox(
                          width: width*0.01,
                        ),
                        Row(
                          children: [
                            Text(
                              "Hi,",
                              style: GoogleFonts.nunitoSans(
                                color: HexColor("390042"),
                                  fontSize: 29, fontWeight: FontWeight.bold),
                            ),

                            SizedBox(
                              width: width*0.01,
                            ),
                            // GetBuilder(
                            // init: contr,
                            // builder: (value) {
                            // return Text(
                            // 'Name${value.name}',
                            // );
                            // },
                            // ),
                            Text(
                              contr.name.value,
                              style: GoogleFonts.nunitoSans(
                                color: HexColor("390042"),
                                  fontSize: 29, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height*0.01,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          child: Image.asset("assets/hs/visacard.png"),
                        ),
                        // Positioned(
                        // left:10,
                        // top: 0,
                        // child:LiteRollingSwitch(
                        // textSize: 10,
                        // width: 70,
                        // value: true,
                        // onTap: (){}, onDoubleTap: (){}, onSwipe: (){},
                        // onChanged: (value){
                        // print(value);
                        // })
                        // ),
                        Positioned(
                            top: height*0.0,
                            right: width*0.15,
                            child: Image.asset(
                              contr.avatar.value,
                              height: height*0.38,
                              width: width*0.7,
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: width*0.15),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: width*0.65, top: height*0.05),
                                child: Text(
                                  "XXXX",
                                  style: GoogleFonts.nunitoSans(
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width*0.65, top: 3),
                                child: Text(
                                  "XXXX",
                                  style: GoogleFonts.nunitoSans(
                                      color: Colors.white),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: width*0.65, top: 3),
                                child: Text(
                                  "XX56",
                                  style: GoogleFonts.nunitoSans(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width*0.65, top: 3),
                                child: Text(
                                  "XX56",
                                  style: GoogleFonts.nunitoSans(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width*0.65, top: 3),
                                child: Text(
                                  "VALID THRU",
                                  style: GoogleFonts.nunitoSans(
                                      color: Colors.white, fontSize: 8),
                                ),
                              ),
                              // Padding(
                              // padding: EdgeInsets.only(right: 220),
                              // child: LiteRollingSwitch(onTap: (){}, onDoubleTap: (){}, onSwipe: (){},
                              // value:true,
                              // colorOff: Colors.purple,
                              // colorOn: Colors.purple,
                              // iconOff: Icons.turn_right_sharp,
                              // iconOn: Icons.turn_left,
                              // textOff: "",
                              // textSize: 8,
                              // width: 200,
                              // textOn: "CVV",
                              // onChanged: (value){

                              // }
                              // ),
                              // ),
                              Padding(
                                padding: EdgeInsets.only(left: width*0.65, top: 3),
                                child: Text(
                                  "05/26",
                                  style: GoogleFonts.nunitoSans(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),

                              // Row(
                              // children: <Widget>[
                              // Padding(
                              // padding: EdgeInsets.fromLTRB(210, 30, 10, 50),
                              // child: Text("$cardvar1",style: TextStyle(color: Colors.white),),
                              // )
                              // ],
                              // ),

                              // Row(
                              // children: <Widget>[
                              // Padding(
                              // padding: EdgeInsets.only(left: 210,bottom: 300),
                              // child: Text("$cardvar1",style: TextStyle(color: Colors.white)),
                              // )
                              // ],
                              // ),

                              // Container(
                              // child: Image.asset("assets/hs/avatar.png",width: 200,height: 200,),
                              // ),
                            ],
                          ),
                        ),
                        Positioned(
                          child: Text(
                            "CVV",
                            style: GoogleFonts.nunitoSans(color: Colors.white),
                          ),
                          top: height*0.2,
                          right: width*0.85,
                        )
                      ],
                    ),
                    SizedBox(
                      height: height*0.05,
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: width*0.1,
                  ),
                  Stack(
                    children: [
                      Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          child: Container(
                            width: width*0.35,
                            height: height*0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset("assets/hs/deposit1.png"),
                          ),
                        ),
                      ),
                      Positioned(
                          top: height*0.01,
                          left: width*0.02,
                          child: Text(
                            "Deposit",
                            style: GoogleFonts.nunitoSans(
                                color: HexColor("390042"),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: width*0.09,
                  ),

                  Stack(
                    children: [
                      Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          child: Container(
                            width: width*0.35,
                            height: height*0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: Image.asset("assets/hs/withdraw1.png"),
                          ),
                        ),
                      ),
                      Positioned(
                          top: height*0.01,
                          left: width*0.02,
                          child: Text("Withdraw",
                              style: GoogleFonts.nunitoSans(
                                  color: HexColor("390042"),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)))
                    ],
                  ),

                  //  InkWell(
                  // child: CircleAvatar(
                  //  backgroundColor: HexColor("#e8bcf0"),
                  //  radius: 50,
                  // child: Image.asset("assets/hs/withdraw1.png"),
                  // ),
                  // ),
                  SizedBox(
                    width: width*0.02,
                  ),

                  // Stack(
                  // children: [
                  // InkWell(
                  // child: Container(
                  // width: 100,
                  // height: 100,
                  // decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(20),
                  // color: HexColor("#e8bcf0"),
                  // shape: BoxShape.rectangle,
                  // ),
                  // child: Image.asset("assets/hs/balance1.png"),
                  // ),
                  // ),
                  // const Positioned(
                  // bottom: 80,
                  // left: 10,
                  // child: Text("Balance",
                  // style: TextStyle(
                  // color: Colors.black,
                  // fontSize: 13,
                  // fontWeight: FontWeight.bold)))
                  // ],
                  // ),

                  //  InkWell(
                  // child: CircleAvatar(
                  //  backgroundColor: HexColor("#e8bcf0"),
                  //  radius: 50,
                  // child: Image.asset("assets/hs/balance1.png"),
                  // ),
                  // ),
                ],
              ),
              //banner
              // HorizontalListView(height: 100, width: double.maxFinite, list: [
              // Image.asset("assets/listview1.jpeg"),
              // Image.asset("assets/listview2.jpeg"),
              // Image.asset("assets/listview3.jpeg"),
              // Image.asset("assets/listview1.jpeg"),
              // Image.asset("assets/listview2.jpeg"),
              // Image.asset("assets/listview3.jpeg")
              //
              // ]),

              SizedBox(
                height: height*0.01,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlayInterval: Duration(seconds: 2),
                  
                  
                  autoPlayCurve: Curves.linear,
                  autoPlay: true,
                  height: height*0.2,
                ),
                items: [1, 2, 3, 4].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Row(
                        children: [
                          Container(
                              width: width*0.77,
                              height: height*0.1,
                              child: Image.asset(
                                'assets/carousel/bb$i.png',
                                height: height*0.2,
                                width: width*0.6,
                              )),
                        ],
                      );
                    },
                  );
                }).toList(),
              )
              // ,Container(
              // width: MediaQuery.sizeOf(context).width,
              // height: 200,
              // child: ListView.builder(
              // shrinkWrap: true,
              // scrollDirection: Axis.horizontal,
              // itemCount: 4,
              // itemBuilder: (BuildContext context, int index){
              // return Container(
              // width: MediaQuery.sizeOf(context).width,
              // child: Image.asset("assets/brands/b1.png",width: MediaQuery.sizeOf(context).width,)
              // );
              // },
              // ),
              // )
              // Container(
              //
              // child: ListView.builder(
              // shrinkWrap: true,
              // scrollDirection: Axis.horizontal,
              // itemCount: 4,
              // itemBuilder: (BuildContext context,int index){
              // return Container(
              // child: Image.asset("asets/brands/b$index.png"),
              // );
              // },
              //
              // ),
              // ),

              ,
              Padding(
                padding: EdgeInsets.only(left: width*0.02),
                child: Text(
                  "Do you want to earn ?",
                  style: GoogleFonts.nunitoSans(
                    color:HexColor("390042"),
                    fontSize: 24,
                  ),
                ),
              ),

              SizedBox(
                height: height*0.02,
              ),

              Row(
                children: <Widget>[
                  SizedBox(
                    width: width*0.05,
                  ),
                  Stack(
                    children: [
                      Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          child: Container(
                            width: width*0.4,
                            height: height*0.22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  "assets/hs/sharepink.png",
                                  height: height*0.15,
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width*0.04, top: height*0.01),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get 25% cashback",
                              style: GoogleFonts.nunitoSans(
                                color:HexColor("390042"),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("through post",
                                style: GoogleFonts.nunitoSans(
                                  color:HexColor("390042"),
                                 
                                  fontSize: 13,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width*0.05,
                  ),
                  Stack(
                    children: [
                      Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          child: Container(
                           width: width*0.4,
                           height: height*0.22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                            ),
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  "assets/hs/sharepink.png",
                                  height: height*0.15,
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: width*0.04, top: height*0.01),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Get 10% cashback",
                              style: GoogleFonts.nunitoSans(
                                color:HexColor("390042"),
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("through story",
                                style: GoogleFonts.nunitoSans(
                                  color:HexColor("390042"),
                                 
                                  fontSize: 13,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: width*0.01,
                  ),
                ],
              ),
              SizedBox(
  height: height*0.05,
),
            ],
          ),
        );
  }
}
