import 'package:cometdev/controller/detailscontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class PersonalOne extends StatefulWidget {
  const PersonalOne({super.key});

  @override
  State<PersonalOne> createState() => _PersonalOneState();
}

class _PersonalOneState extends State<PersonalOne> {
  @override
  String name = '';
  String email = '';
  String dob = '';
  String pan = '';
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController dobcontroller = new TextEditingController();
  TextEditingController gendercontroller = new TextEditingController();
  TextEditingController mobilecontroller = new TextEditingController();
  TextEditingController pancontroller = new TextEditingController();
  TextEditingController adcontroller = new TextEditingController();
  TextEditingController instacontroller = new TextEditingController();
  bool anychange = false;
  Detailscontroller contr = Get.put(Detailscontroller());
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Details"),
      ),
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  "Name",
                  style: GoogleFonts.nunitoSans(
                      fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Container(
                  width: 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      
                      border: InputBorder.none,
                      hintText: contr.name.value
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0,right: 10),
            child: Divider(
              color: HexColor("EDB2F7"),
              thickness: 3,
            ),
          ),
        ],
      )),
    );
  }
}
