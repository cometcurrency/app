import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:maincomet/controller.dart';
import 'package:quickalert/quickalert.dart';

class Deposit extends StatefulWidget {
  const Deposit({super.key});

  @override
  State<Deposit> createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  @override
  bool fivehundred = false;
  bool thousand = false;
  bool fivethousand = false;
  bool amtgiven = false;
  int amt = 0;
  int deposit = 0;
  Detailscontroller contr = Get.put(Detailscontroller());
  TextEditingController dep = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("ECECEC"),
      appBar: AppBar(
        backgroundColor: HexColor("ECECEC"),
        title: Text(
          "Deposit",
          style: GoogleFonts.nunitoSans(fontSize: 25),
        ),
      ),
      body: Container(
        child: LayoutBuilder(builder: (BuildContext ctx, BoxConstraints cts) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: Text(
                  "Balance(Tentative)",
                  style: GoogleFonts.nunitoSans(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      height: 40,
                      width: cts.maxWidth * 0.8,
                      decoration: BoxDecoration(
                          color: HexColor("FFFFFF"),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, top: 2),
                        child: Row(
                          children: [
                            Text("Rs"),
                            SizedBox(
                              width: 2,
                            ),
                            Text(contr.balance.value.toString()),
                          ],
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: Text(
                  "Deposit Money",
                  style: GoogleFonts.nunitoSans(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: cts.maxWidth * 0.8,
                    decoration: BoxDecoration(
                        color: HexColor("FFFFFF"),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextField(
                        onChanged: (val) {
                          setState(() {
                            amtgiven = true;
                          });
                        },
                        controller: dep,
                        decoration: InputDecoration(
                          hintText: deposit.toString(),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onDoubleTap: () {
                        setState(() {
                          fivehundred = false;
                        });
                      },
                      onTap: () {
                        setState(() {
                          if (thousand || fivethousand) {
                            amtgiven = true;
                            amt = 500;
                            deposit = 500;
                            dep.text = 500.toString();
                            fivethousand = false;
                            fivehundred = true;
                            thousand = false;
                            // gendernotentered = '';
                          }
                          amt = 500;
                          amtgiven = true;
                          deposit = 500;
                          dep.text = 500.toString();
                          fivehundred = true;
                        });
                      },
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 80,
                          height: 30,
                          child: Center(
                            child: Text("Rs 500",
                                style: GoogleFonts.nunitoSans(
                                  color:
                                      // fivehundred ? Colors.white :
                                      Colors.black,
                                )),
                          ),
                          decoration: BoxDecoration(
                            color:
                                // fivehundred ? HexColor("390042") :
                                Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: cts.maxWidth * 0.02,
                    ),
                    //female
                    InkWell(
                      onDoubleTap: () {
                        setState(() {
                          thousand = false;
                        });
                      },
                      onTap: () {
                        setState(() {
                          if (fivehundred || fivethousand) {
                            amt = 1000;
                            deposit = 1000;
                            amtgiven = true;
                            dep.text = 1000.toString();
                            fivethousand = false;
                            fivehundred = false;
                            thousand = true;
                            // gendernotentered = '';
                          }
                          amt = 1000;
                          amtgiven = true;
                          deposit = 1000;
                          dep.text = 1000.toString();
                          thousand = true;
                        });
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 3,
                        child: Container(
                          width: 80,
                          height: 30,
                          child: Center(
                              child: Text("Rs 1000",
                                  style: GoogleFonts.nunitoSans(
                                    color:
                                        // thousand ? Colors.white :
                                        Colors.black,
                                  ))),
                          decoration: BoxDecoration(
                            color:
                                // thousand ? HexColor("390042") :
                                Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: cts.maxWidth * 0.02,
                    ),
                    //Others
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (fivehundred || thousand) {
                            amt = 5000;
                            deposit = 500;
                            amtgiven = true;
                            dep.text = 5000.toString();
                            fivethousand = true;
                            fivehundred = false;
                            thousand = false;
                            // gendernotentered = '';
                          }
                          amt = 5000;
                          deposit = 5000;
                          amtgiven = true;
                          dep.text = 5000.toString();
                          fivethousand = true;
                        });
                      },
                      onDoubleTap: () {
                        setState(() {
                          fivethousand = false;
                        });
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 3,
                        child: Container(
                          width: 80,
                          height: 30,
                          child: Center(
                              child: Text("Rs 5000",
                                  style: GoogleFonts.nunitoSans(
                                    color:
                                        // fivethousand
                                        // ? Colors.white
                                        Colors.black,
                                  ))),
                          decoration: BoxDecoration(
                            color:
                                // fivethousand? HexColor("390042")
                                // :
                                Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(right: 40.0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        contr.balance.value = contr.balance.value + amt;
                        if (amtgiven) {
                          QuickAlert.show(
                            context: context,
                            type: QuickAlertType.success,
                            text: 'Transaction Completed Successfully!',
                          );
                          // Future.delayed(const Duration(milliseconds: 500), () {
                          // Navigator.pop(context);
                          // });
                        }
                      },
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        child: Container(
                          height: 30,
                          width: cts.maxWidth * 0.25,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                              color:
                                  amtgiven ? HexColor("390042") : Colors.grey),
                          child: Center(
                            child: Text(
                              "Deposit",
                              style: TextStyle(
                                  color:
                                      amtgiven ? Colors.white : Colors.black),
                            ),
                          ),
                        ),
                      ),
                    )),
              )
            ],
          );
        }),
      ),
    );
  }
}
