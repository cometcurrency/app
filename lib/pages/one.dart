//import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
// import 'package:cometdev/categories.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:maincomet/controller.dart';
// import 'package:cometdev/profile/profile.dart';
// import 'package:cometdev/tranpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maincomet/pages/categories/deposit.dart';
import 'package:maincomet/pages/withdraw.dart';
import 'package:maincomet/profile/personal2imp.dart';
import 'package:maincomet/profile/profile.dart';
import 'package:switcher_button/switcher_button.dart';
// import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
// import 'package:responsive_framework/responsive_framework.dart';
import 'package:horizontal_list/horizontal_list.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:footer/footer.dart';
// import 'package:footer/footer_view.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homeonerev extends StatefulWidget {
  // final NotchBottomBarController? controller;
  const Homeonerev({super.key});

  @override
  State<Homeonerev> createState() => _HomeonerevState();
}

class _HomeonerevState extends State<Homeonerev> {
  String name = 'Vedanth';
  String cardvar1 = "XXXX";
  String cardvar2 = "XXXX";
  String cardvar3 = "XXXX";
  String cardvar4 = "XX-XX";

  String avatar = "assets/one/avatar.png";
  Detailscontroller contr = Get.put(Detailscontroller());
  // final List<Widget> _widgetOptions = [
  // Homeonerev(),
  // catpage(),
  // Tranpage(),
  // ];
  @override
  Widget build(BuildContext context) {
    final _controller03 = ValueNotifier<bool>(false);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor("F7F5F2"),
      appBar: AppBar(
        backgroundColor: HexColor("F7F5F2"),
        title: Row(
          children: [
            Image.asset(
              "assets/address.png",
              height: 30,
              width: 30,
            ),
            Text(
              "Address",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => PD()));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(contr.avatar.value),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: HexColor("ECECEC"),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )),
            ),
          ),
        ],
      ),
      body: Container(
        color: HexColor("ECECEC"),
        height: height,
        width: width,
        child: LayoutBuilder(builder: (BuildContext ctx, BoxConstraints cts) {
          return Padding(
            padding: EdgeInsets.only(left: 5.0, right: 5),
            child: ListView(
              children: [
                Container(
                  color: HexColor("ECECEC"),
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
                            width: cts.maxWidth * 0.01,
                          ),
                          SizedBox(
                            height: cts.maxHeight * 0.1,
                          ),
                          Row(
                            children: [
                              Text(
                                "Hi,",
                                style: GoogleFonts.nunitoSans(
                                    color: HexColor("390042"),
                                    fontSize: 29,
                                    fontWeight: FontWeight.bold),
                              ),

                              SizedBox(
                                width: cts.maxWidth * 0.01,
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
                                    fontSize: 29,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: cts.maxWidth * 0.35,
                              ),
                              AdvancedSwitch(
                                height: 30,
                                activeColor: HexColor("504253"),
                                inactiveColor: HexColor("504253"),
                                activeChild: Row(
                                  children: [
                                    Image.asset(
                                      "assets/coin.png",
                                      height: 25,
                                    ),
                                    Text(
                                      "₹" + contr.balance.value.toString(),
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                inactiveChild: Padding(
                                    padding:
                                        EdgeInsets.only(right: 1, left: 25),
                                    child: Image.asset(
                                      "assets/coin.png",
                                      height: 20,
                                    )),
                                width: 100,
                                controller: _controller03,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: cts.maxHeight * 0.02,
                      ),
                      // Container(
                      // child: LayoutBuilder(
                      // builder: (BuildContext ctx, BoxConstraints cts) {
                      // return Stack(
                      // children: <Widget>[
                      // Container(
                      // child: Image.asset("assets/one/visacard.png"),
                      // ),
                      // Positioned(
                      // top: cts.maxHeight * 0.009,
                      // child: Image.asset(
                      // contr.avatar.value,
                      // ))
                      // ],
                      // );
                      // }),
                      // ),
                      Stack(
                        children: <Widget>[
                          Container(
                            child: Image.asset("assets/one/visacard.png"),
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
                              top: 2,
                              right: 70,
                              child: Image.asset(
                                contr.avatar.value,
                                height: 300,
                                width: 280,
                              )),
                          Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 270, top: 50),
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
                                  padding: EdgeInsets.only(left: 270, top: 3),
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
                                  padding: EdgeInsets.only(left: 270, top: 3),
                                  child: Text(
                                    "XX56",
                                    style: GoogleFonts.nunitoSans(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 270, top: 3),
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
                                  padding: EdgeInsets.only(left: 270, top: 3),
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
                                  padding: EdgeInsets.only(left: 270, top: 3),
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
                                // child: Image.asset("assets/one/avatar.png",width: 200,height: 200,),
                                // ),
                              ],
                            ),
                          ),
                          Positioned(
                            child: Text(
                              "CVV",
                              style:
                                  GoogleFonts.nunitoSans(color: Colors.white),
                            ),
                            top: 170,
                            right: 340,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      width: cts.maxWidth * 0.05,
                    ),
                    Stack(
                      children: [
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Deposit()));
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                              ),
                              child: Image.asset("assets/one/deposit1.png"),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 10,
                            left: 5,
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
                      width: cts.maxWidth * 0.062,
                    ),

                    Stack(
                      children: [
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Withdraw()));
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                              ),
                              child: Image.asset("assets/one/withdraw1.png"),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 10,
                            left: 5,
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
                    // child: Image.asset("assets/one/withdraw1.png"),
                    // ),
                    // ),
                    SizedBox(
                      width: cts.maxWidth * 0.02,
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
                    // child: Image.asset("assets/one/balance1.png"),
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
                    // child: Image.asset("assets/one/balance1.png"),
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
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1,
                      padEnds: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayCurve: Curves.linear,
                      autoPlay: true,
                      height: height * 0.2,
                    ),
                    items: [1, 2, 3, 4].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Row(
                            children: [
                              Material(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: width * 0.9,
                                    height: 150,
                                    child: Image.asset(
                                      height: 200,
                                      'assets/image.png',
                                    )),
                              ),
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
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
              ],
            ),
          );
        }),
      ),
    );
  }
}
