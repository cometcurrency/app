import 'package:maincomet/controller.dart';
import 'package:maincomet/profile/appsettings.dart';
import 'package:maincomet/profile/cardsettings.dart';
// import 'package:newproject/profile/personal.dart';
import 'package:maincomet/profile/personal2imp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Profilerev extends StatefulWidget {
  const Profilerev({super.key});

  @override
  State<Profilerev> createState() => _ProfilerevState();
}

class _ProfilerevState extends State<Profilerev> {
  @override
  String avatar = "assets/hs/avatar.png";
  String name = 'Vedanth';
  String phone = '0123456789';
  String email = 'vedanthii@gmail.com';
  String insta = 'mk.vedanth';
  Detailscontroller contr = Get.put(Detailscontroller());
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: HexColor("F7F5F2"),
      ),
      backgroundColor: HexColor("F7F5F2"),
      body: SafeArea(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: LayoutBuilder(builder: (BuildContext ctx, BoxConstraints cts) {
            return Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            height: 200,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.05),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            color: HexColor("FADEFF"),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.black, width: 2)),
                                        child: Image.asset(
                                          contr.avatar.value,
                                          height: 100,
                                          width: 200,
                                        ),
                                      ),
                                      Positioned(
                                          top: 10,
                                          left: 125,
                                          child: Icon(
                                            Icons.edit_sharp,
                                            size: 18,
                                          ))
                                    ],
                                  ),
                                ),
                                //details
                                SizedBox(width: 20),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Flexible(
                                        child: Row(
                                          children: [
                                            Text(
                                              "Name : ",
                                              style: GoogleFonts.nunitoSans(
                                                  color: HexColor("390042"),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Obx(() => Container(
                                                  child: Text(
                                                    contr.name.value,
                                                    overflow: TextOverflow.clip,
                                                    maxLines: 1,
                                                    softWrap: true,
                                                    style:
                                                        GoogleFonts.nunitoSans(
                                                            color: HexColor(
                                                                "390042"),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300),
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "PAN : ",
                                            style: GoogleFonts.nunitoSans(
                                                color: HexColor("390042"),
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Obx(() => Text(
                                                contr.pan.value.substring(0, 1),
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.nunitoSans(
                                                    color: HexColor("390042"),
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )),
                                          Text("*****"),
                                          Obx(() => Text(
                                                contr.pan.value
                                                    .substring(6, 10),
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.nunitoSans(
                                                    color: HexColor("390042"),
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Phone: ",
                                            style: GoogleFonts.nunitoSans(
                                                color: HexColor("390042"),
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Obx(() => Text(
                                                contr.phone.value,
                                                overflow: TextOverflow.ellipsis,
                                                style: GoogleFonts.nunitoSans(
                                                    color: HexColor("390042"),
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )),
                                        ],
                                      ),
                                      // Row(
                                      // children: [
                                      // Text(
                                      // "Instagram username : ",
                                      // style: GoogleFonts.nunitoSans(
                                      // fontWeight: FontWeight.w700),
                                      // ),
                                      // Obx(() => Text(
                                      // contr.instagram.value,
                                      // overflow: TextOverflow.ellipsis,
                                      // style: GoogleFonts.nunitoSans(
                                      // fontWeight: FontWeight.w300),
                                      // )),
                                      // ],
                                      // ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              top: 10,
                              left: 350,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PD()),
                                  );
                                },
                                child: Icon(Icons.edit),
                              ))
                        ],
                      ),
                    ),
                    //rest of the fields
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Appsettings()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 10),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 3,
                          child: Container(
                            height: cts.maxHeight * 0.06,
                            width: cts.maxWidth * 0.9,
                            decoration: BoxDecoration(
                                color: HexColor("FFFFFF"),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 5),
                              child: Text("App settings",
                                  style: GoogleFonts.nunitoSans(fontSize: 24)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Cardsettings()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 10),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 3,
                          child: Container(
                            height: cts.maxHeight * 0.06,
                            width: cts.maxWidth * 0.9,
                            decoration: BoxDecoration(
                                color: HexColor("FFFFFF"),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 5),
                              child: Text("Card settings",
                                  style: GoogleFonts.nunitoSans(fontSize: 24)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 10),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 3,
                          child: Container(
                            height: cts.maxHeight * 0.06,
                            width: cts.maxWidth * 0.9,
                            decoration: BoxDecoration(
                                color: HexColor("FFFFFF"),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 5),
                              child: Text("About",
                                  style: GoogleFonts.nunitoSans(fontSize: 24)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 10),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 3,
                          child: Container(
                            height: cts.maxHeight * 0.06,
                            width: cts.maxWidth * 0.9,
                            decoration: BoxDecoration(
                                color: HexColor("FFFFFF"),
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0, top: 5),
                              child: Text("Contact Us",
                                  style: GoogleFonts.nunitoSans(fontSize: 24)),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // InkWell(
                    // child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // children: <Widget>[
                    // Image.asset(
                    // "assets/profile/settings.png",
                    // height: 50,
                    // ),
                    // SizedBox(
                    // width: 20,
                    // ),
                    // Text(
                    // "App settings",
                    // style: GoogleFonts.nunitoSans(
                    // color: HexColor("390042"), fontSize: 24),
                    // )
                    // ],
                    // ),
                    // ),
                    // SizedBox(
                    // height: 20,
                    // ),
                    // Divider(
                    // color: HexColor("EDB2F7"),
                    // thickness: 3,
                    // ),
                    // InkWell(
                    // child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // children: <Widget>[
                    // Image.asset(
                    // "assets/profile/card.png",
                    // height: 50,
                    // ),
                    // SizedBox(
                    // width: 20,
                    // ),
                    // Text(
                    // "Card settings",
                    // style: GoogleFonts.nunitoSans(
                    // color: HexColor("390042"), fontSize: 24),
                    // )
                    // ],
                    // ),
                    // ),
                    // SizedBox(
                    // height: 20,
                    // ),
                    // Divider(
                    // color: HexColor("EDB2F7"),
                    // thickness: 3,
                    // ),
                    // InkWell(
                    // child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // children: <Widget>[
                    // Image.asset(
                    // "assets/profile/info.png",
                    // height: 50,
                    // ),
                    // SizedBox(
                    // width: 20,
                    // ),
                    // Text(
                    // "About",
                    // style: GoogleFonts.nunitoSans(
                    // color: HexColor("390042"), fontSize: 24),
                    // )
                    // ],
                    // ),
                    // ),
                    // SizedBox(
                    // height: 20,
                    // ),
                    // Divider(
                    // color: HexColor("EDB2F7"),
                    // thickness: 3,
                    // ),
                    // InkWell(
                    // child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // children: <Widget>[
                    // Image.asset(
                    // "assets/profile/call.png",
                    // height: 50,
                    // ),
                    // SizedBox(
                    // width: 20,
                    // ),
                    // Text(
                    // "Contact Us",
                    // style: GoogleFonts.nunitoSans(fontSize: 24),
                    // )
                    // ],
                    // ),
                    // ),
                    // SizedBox(
                    // height: 20,
                    // ),
                    // Divider(
                    // color: HexColor("EDB2F7"),
                    // thickness: 3,
                    // )
                  ],
                ));
          }),
        ),
      ),
    );
  }
}
