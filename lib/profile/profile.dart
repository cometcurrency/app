import 'package:cometdev/controller/detailscontroller.dart';
import 'package:cometdev/profile/personal.dart';
import 'package:cometdev/profile/personal2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                      height: height * 0.04,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            height: height * 0.3,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.05),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: height * 0.2,
                                        width: width * 0.3,
                                        decoration: BoxDecoration(
                                            color: HexColor("FADEFF"),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: Colors.black, width: 2)),
                                        child: Image.asset(
                                          contr.avatar.value,
                                          height: height * 0.2,
                                          width: 200,
                                        ),
                                      ),
                                      Positioned(
                                          top: height * 0.01,
                                          left: width * 0.23,
                                          child: Icon(
                                            Icons.edit_sharp,
                                            size: 18,
                                          ))
                                    ],
                                  ),
                                ),
                                //details
                                SizedBox(width: width * 0.05),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: height * 0.08,
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
                                        height: height * 0.02,
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
                                        height: height * 0.02,
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
                              top: height * 0.01,
                              left: width * 0.8,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Personal2()),
                                  );
                                },
                                child: Icon(Icons.edit),
                              ))
                        ],
                      ),
                    ),
                    //rest of the fields
                    SizedBox(
                      height: height * 0.05,
                    ),
                    InkWell(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            "assets/profile/settings.png",
                            height: height * 0.05,
                          ),
                          SizedBox(
                            width: width * 0.06,
                          ),
                          Text(
                            "App settings",
                            style: GoogleFonts.nunitoSans(
                                color: HexColor("390042"), fontSize: 24),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Divider(
                      color: HexColor("EDB2F7"),
                      thickness: 3,
                    ),
                    InkWell(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            "assets/profile/card.png",
                            height: height * 0.05,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Text(
                            "Card settings",
                            style: GoogleFonts.nunitoSans(
                                color: HexColor("390042"), fontSize: 24),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      color: HexColor("EDB2F7"),
                      thickness: 3,
                    ),
                    InkWell(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            "assets/profile/info.png",
                            height: height * 0.05,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Text(
                            "About",
                            style: GoogleFonts.nunitoSans(
                                color: HexColor("390042"), fontSize: 24),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      color: HexColor("EDB2F7"),
                      thickness: 3,
                    ),
                    InkWell(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            "assets/profile/call.png",
                            height: height * 0.05,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Text(
                            "Contact Us",
                            style: GoogleFonts.nunitoSans(fontSize: 24),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Divider(
                      color: HexColor("EDB2F7"),
                      thickness: 3,
                    )
                  ],
                ));
          }),
        ),
      ),
    );
  }
}
