import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Tranpage extends StatefulWidget {
  const Tranpage({super.key});

  @override
  State<Tranpage> createState() => _TranpageState();
}

class _TranpageState extends State<Tranpage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String balance = '5500';
    late String cashback = '2500';
    late String ccsore = '580';
    List<String> transdate = [
      'Aug 17 2024',
      'Aug 15 2024',
      'Aug 14 2024',
      'Aug 13 2024',
      'Aug 12 2024',
    ];
    // List<String> transdate = [
    // 'May 12 2024',
    // 'May 18 2024',
    // 'May 18 2024',
    // 'May 12 2024',
    // 'May 18 2024',
    // 'May 18 2024'
    // ];
    List<String> transamount = [
      '₹2000','₹5000','₹500','₹2000','₹10000'
    ];
    List<String> transtype = [
      'Received From',
      'Paid To',
      'Received From',
      'Paid To',
      'Deposited From',
    ];
    List<String> transtime = [
      '1 min ago',
      '1 day ago',
      '2 day ago',
      '3 day ago',
      '4 day ago',
    ];
    List<String> transname = [
      'Comet Currency',
      'Puma',
      'Comet Currency',
      'Soul Store',
      'Vedanth',
    ];
    List<String> image=[
      'assets/tranpage/cc.png',
      'assets/tranpage/puma.png',
      'assets/tranpage/cc.png',
      'assets/tranpage/ss.png',
      'assets/tranpage/hdfc.png'

    ];
    
    List<String> transpic = [''];
    return ListView(
      shrinkWrap: true,
      children: [
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: width*0.05),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("My Transactions",
                      style: GoogleFonts.nunitoSans(
                          color:HexColor("390042"),
                          fontSize: 22,
                          fontWeight: FontWeight.w900))),
            ),
            SizedBox(
              height: height*0.01,
            ),
            Stack(
              children: [
                Container(
                  child: Image.asset("assets/trancard1.png"),
                ),
                Positioned(
                    top: height*0.09,
                    left: width*0.35,
                    child: Container(
                      width: width*0.3,
                      child: Center(
                          child: Text(
                        "$balance",
                        style: GoogleFonts.nunitoSans(color:HexColor("390042"),
                          fontSize: 20
                          ),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    )),
                Positioned(
                    top: height*0.20,
                    left: width*0.18,
                    child: Container(
                      width: width*0.25,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "$cashback",
                        style: GoogleFonts.nunitoSans(
                          color:HexColor("390042"),
                          fontSize: 20
                          ),
                      )),
                    )),
                Positioned(
                    top: height*0.20,
                    left: width*0.6,
                    child: Container(
                      width: width*0.25,
                      child: Center(
                          child: Text(
                        "$ccsore",
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20, color:HexColor("390042"),
                          ),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: width*0.05),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "This Week",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 20,color:HexColor("390042"),
                      ),
                  )),
            ),
            SizedBox(
              height: height*0.01,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: transdate.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext build, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width*0.01, right: width*0.01),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: BoxDecoration(
                              color: HexColor("FFFFFF"),
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.black, width: 2)),
                            width: width*0.95,
                            height: 100,
                            child: Padding(
                                padding: EdgeInsets.only(left: width*0.02),
                                child: Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: HexColor("FADEFF"),
                                      radius: 30,
                                      child:
                                          Image.asset(image[index],height: 45,width: 45),
                                    ),
                                    SizedBox(
                                      width: width*0.002,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          height: height*0.01,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: width*0.02),
                                          child: Text(
                                            transtype[index],
                                            style: GoogleFonts.nunitoSans(
                                              color:HexColor("390042"),
                                                fontSize: 15),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: width*0.02),
                                          child: Text(
                                            transname[index],
                                            style: GoogleFonts.nunitoSans(
                                              color:HexColor("390042"),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left:width*0.02),
                                          child: Row(
                                            children: [
                                              Text(
                                                transdate[index],
                                                style: GoogleFonts.nunitoSans(
                                                  color:HexColor("390042"),
                                                    fontSize: 13),
                                              ),
                                              Text(
                                                ",",
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color:HexColor("390042"),
                                                  ),
                                              ),
                                              Text(
                                                transtime[index],
                                                style: GoogleFonts.nunitoSans(
                                                  color:HexColor("390042"),
                                                    fontSize: 13),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 50,right: 10),
                                      child: (transtype[index]=='Received From' || transtype[index]=='Deposited From') ? 
                                      Text("+"+transamount[index],style: GoogleFonts.nunitoSans(color: HexColor("03A41D"))) : 
                                      Text("-"+transamount[index],style: GoogleFonts.nunitoSans(color: HexColor("A90000")))
                                      ),
                                    // Align(
                                      // alignment: Alignment.centerRight,
                                      // child: Padding(
                                          // padding: EdgeInsets.only(
                                              // left: width*0.10,right: width*0.1),
                                          // child: (transtype[index] == 'Received From' || transtype[index] == 'Deposited From')
                                              // ? Text(
                                                  // "+"+transamount[index],
                                                  // style: GoogleFonts.nunitoSans(
                                                    // 
                                                      // fontSize: 15,
                                                      // fontWeight:
                                                          // FontWeight.w700,
                                                      // color:
                                                          // HexColor("03A41D")),
                                                // )
                                              // : Text(
                                                  // "-"+transamount[index],
                                                  // style: GoogleFonts.nunitoSans(
                                                      // fontSize: 15,
                                                      // fontWeight:
                                                          // FontWeight.w700,
                                                      // color:
                                                          // HexColor("A90000")),
                                                // )),
                                    // )
                                  ],
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                }),
            Padding(
              padding: EdgeInsets.only(right: width*0.05),
              child: Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  child: Text(
                    "View last months transaction",
                    style: GoogleFonts.nunitoSans(
                      color:HexColor("390042"),
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ),
            SizedBox(height: height*0.05,)
          ],
        ),
      ],
    );
  }
}
