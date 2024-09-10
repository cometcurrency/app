// import 'dart:async';

// import 'package:cometdev/controller/detailscontroller.dart';
// import 'package:cometdev/profile/profile.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:pinput/pinput.dart';
// import 'package:simple_form_validations/simple_form_validations.dart';

// class Personal extends StatefulWidget {
//   const Personal({super.key});

//   @override
//   State<Personal> createState() => _PersonalState();
// }

// class _PersonalState extends State<Personal> {
//   String name = '';
//   String email = '';
//   String dob = '';
//   String pan = '';
//   TextEditingController namecontroller = new TextEditingController();
//   TextEditingController emailcontroller = new TextEditingController();
//   TextEditingController dobcontroller = new TextEditingController();
//   TextEditingController gendercontroller = new TextEditingController();
//   TextEditingController mobilecontroller = new TextEditingController();
//   TextEditingController pancontroller = new TextEditingController();
//   TextEditingController adcontroller = new TextEditingController();
//   TextEditingController instacontroller = new TextEditingController();
//   final _nameformKey = GlobalKey<FormState>();
//   final _adformKey = GlobalKey<FormState>();
//   bool anychange = false;
//   bool namechange = false;
//   bool adchange = false;
//   String errorname = "";
//   String errorad = "";
//   bool namevalid = false;
//   bool advalid = false;
//   Detailscontroller contr = Get.put(Detailscontroller());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: HexColor("F7F5F2"),
//       appBar: AppBar(
//         title: Text(
//           "Personal Details",
//           style: GoogleFonts.nunitoSans(fontWeight: FontWeight.w800),
//         ),
//         backgroundColor: HexColor("F7F5F2"),
//       ),
//       body: GestureDetector(
//         onTap: () {
//           FocusScope.of(context).requestFocus(new FocusNode());
//         },
//         child: SafeArea(
//           child: ListView(
//             children: [
//               Form(
//                 key: _nameformKey,
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 10.0, right: 270),
//                       child: Text(
//                         "Name",
//                         style: GoogleFonts.nunitoSans(
//                             fontWeight: FontWeight.w800, fontSize: 20),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 40.0),
//                       child: TextFormField(
//                         validator: (value) =>
//                             SimpleValidations.nameValidator(value),
//                         controller: namecontroller,
//                         decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: contr.name.value),
//                         onChanged: (value) {
//                           namechange = true;
//                           anychange = true;
//                           contr.name.value = value;
//                         },
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 30.0, right: 20),
//                       child: Divider(
//                         color: HexColor("EDB2F7"),
//                         thickness: 3,
//                       ),
//                     ),
//                     //dob
//                     //email
//                     SizedBox(
//                       height: 20,
//                     ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 10.0, right: 270),
//                     // child: Text(
//                     // "Email",
//                     // style: GoogleFonts.nunitoSans(
//                     // fontWeight: FontWeight.w800, fontSize: 20),
//                     // ),
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 40.0),
//                     // child: TextFormField(
//                     // validator: (value) =>
//                     // SimpleValidations.emailValidator(value),
//                     // controller: emailcontroller,
//                     // decoration: InputDecoration(
//                     // border: InputBorder.none,
//                     // hintText: contr.email.value),
//                     // onChanged: (value) {
//                     // anychange = true;
//                     // contr.email.value = value;
//                     // },
//                     // ),
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 30.0, right: 20),
//                     // child: Divider(
//                     // color: HexColor("EDB2F7"),
//                     // thickness: 3,
//                     // ),
//                     // ),

//                     //mobi
//                     // SizedBox(
//                     // height: 20,
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 10.0, right: 230),
//                     // child: Text(
//                     // "Instagram",
//                     // style: GoogleFonts.nunitoSans(
//                     // fontWeight: FontWeight.w800, fontSize: 20),
//                     // ),
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 40.0),
//                     // child: TextFormField(
//                     // validator: (value) =>
//                     // SimpleValidations.phoneNumberValidator(value),
//                     // controller: mobilecontroller,
//                     // decoration: InputDecoration(
//                     // border: InputBorder.none,
//                     // hintText: contr.phone.value),
//                     // onChanged: (value) {
//                     // anychange = true;
//                     // contr.phone.value = value;
//                     // },
//                     // ),
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 30.0, right: 20),
//                     // child: Divider(
//                     // color: HexColor("EDB2F7"),
//                     // thickness: 3,
//                     // ),
//                     // ),
//                     //pan
//                     SizedBox(
//                       height: 20,
//                     ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 10.0, right: 225),
//                     // child: Text(
//                     // "PAN Number",
//                     // style: GoogleFonts.nunitoSans(
//                     // fontWeight: FontWeight.w800, fontSize: 20),
//                     // ),
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 40.0),
//                     // child: TextFormField(
//                     // validator: (value) =>
//                     // SimpleValidations.panCardValidator(value),
//                     // controller: pancontroller,
//                     // decoration: InputDecoration(
//                     // border: InputBorder.none,
//                     // hintText: contr.pan.value),
//                     // onChanged: (value) {
//                     // anychange = true;
//                     // contr.pan.value = value;
//                     // },
//                     // ),
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 30.0, right: 20),
//                     // child: Divider(
//                     // color: HexColor("EDB2F7"),
//                     // thickness: 3,
//                     // ),
//                     // ),
//                     //permanent address
//                     SizedBox(
//                       height: 20,
//                     ),
//                     //insta
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 10.0, right: 160),
//                     // child: Text(
//                     // "Instagram Username",
//                     // style: GoogleFonts.nunitoSans(
//                     // fontWeight: FontWeight.w800, fontSize: 20),
//                     // ),
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 40.0),
//                     // child: TextField(
//                     // controller: instacontroller,
//                     // decoration: InputDecoration(
//                     // border: InputBorder.none,
//                     // hintText: contr.instagram.value),
//                     // onChanged: (value) {
//                     // anychange=true;
//                     // contr.instagram.value = value;
//                     // },
//                     // ),
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 30.0, right: 20),
//                     // child: Divider(
//                     // color: HexColor("EDB2F7"),
//                     // thickness: 3,
//                     // ),
//                     // ),

//                     // Padding(
//                     // padding: EdgeInsets.only(left: 10.0, right: 160),
//                     // child: Text(
//                     // "Permanent Address",
//                     // style: GoogleFonts.nunitoSans(
//                     // fontWeight: FontWeight.w800, fontSize: 20),
//                     // ),
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 40.0),
//                     // child: TextField(
//                     // controller: adcontroller,
//                     // decoration: InputDecoration(
//                     // border: InputBorder.none, hintText: contr.ad.value),
//                     // onChanged: (value) {
//                     // anychange=true;
//                     // contr.ad.value = value;
//                     // },
//                     // ),
//                     // ),
//                     // Padding(
//                     // padding: EdgeInsets.only(left: 30.0, right: 20),
//                     // child: Divider(
//                     // color: HexColor("EDB2F7"),
//                     // thickness: 3,
//                     // ),
//                     // ),
//                     Text(errorad),
//                     Text(namechange.toString()),
//                     Text(namevalid.toString()),
//                     ElevatedButton(
//                         onPressed: () {
//                           if (namechange &&
//                               namecontroller.value.text.length < 10 &&
//                               namecontroller.value.text.length > 10) {
//                             contr.name.value = namecontroller.value.text;
//                             namevalid = true;
//                             setState(() {
//                               errorname = "";
//                             });
//                           } else if (namechange &&
//                               namecontroller.value.text.length < 2) {
//                             namevalid = false;
//                             setState(() {
//                               errorname =
//                                   "Please enter name here within 10 chars";
//                             });
//                           } else if (!namechange) {
//                             namevalid = true;
//                             setState(() {
//                               errorname = "Please enter name within 10 chars";
//                             });
//                           }

//                           // Timer(Duration(seconds: 0), () {

//                           // if (_formKey.currentState!.validate()) {
//                           // Navigator.pushReplacement(
//                           // context,
//                           // MaterialPageRoute(
//                           // builder: (context) => Profile()),
//                           // );
//                           // }
//                           // });
//                         },
//                         style:
//                             // ? ButtonStyle(
//                             // shape: MaterialStateProperty.all(
//                             // RoundedRectangleBorder(
//                             // borderRadius: BorderRadius.circular(20)),
//                             // ),
//                             // backgroundColor:
//                             // MaterialStateProperty.all(HexColor("504253")))
//                             // :
//                             ButtonStyle(
//                                 shape: MaterialStateProperty.all(
//                                   RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(20)),
//                                 ),
//                                 backgroundColor:
//                                     MaterialStateProperty.all(Colors.purple)),
//                         child: Text(
//                           "Update Details",
//                           style: GoogleFonts.nunitoSans(
//                               color: Colors.white, fontSize: 20),
//                         )

//                         //  Text("Go back",
//                         // style: GoogleFonts.nunitoSans(
//                         // color: Colors.white, fontSize: 20)),
//                         ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:cometdev/controller/detailscontroller.dart';
import 'package:cometdev/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_form_validations/simple_form_validations.dart';

class Personal2rev extends StatefulWidget {
  const Personal2rev({super.key});

  @override
  State<Personal2rev> createState() => _Personal2revState();
}

class _Personal2revState extends State<Personal2rev> {
  final _namekey = GlobalKey<FormState>();
  final _adkey = GlobalKey<FormState>();
  final _instakey = GlobalKey<FormState>();
  final _emailkey = GlobalKey<FormState>();
  bool namevalid = false;
  bool addvalid = false;

  TextEditingController namecontroller = new TextEditingController();
  TextEditingController adcontroller = new TextEditingController();
  TextEditingController instacontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();

  Detailscontroller contr = Get.put(Detailscontroller());
  bool nameeditbutton = true;
  bool nameeditfield = false;

  bool adeditbutton = true;
  bool adeditfield = false;

  bool emaileditbutton = true;
  bool emaileditfield = false;

  bool instaeditbutton = true;
  bool instaeditfield = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Personal Details",
          style: GoogleFonts.nunitoSans(
            color: HexColor("390042"),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SafeArea(
            child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: LayoutBuilder(builder: (BuildContext ctx, BoxConstraints cts) {
            return ListView(
              children: <Widget>[
                SizedBox(
                  height: cts.maxHeight * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Name",
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("390042"),
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: cts.maxWidth * 0.15,
                      ),
                      if (nameeditbutton)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              nameeditbutton = false;
                              nameeditfield = true;
                            });
                          },
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                        )
                    ],
                  ),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.05,
                ),
                if (!nameeditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      contr.name.value,
                      style: GoogleFonts.nunitoSans(fontSize: 15),
                    ),
                  )
                else if (nameeditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Container(
                            width: cts.maxWidth * 0.5,
                            child: Form(
                              key: _namekey,
                              child: TextFormField(
                                validator: (value) =>
                                    SimpleValidations.nameValidator(value),
                                controller: namecontroller,
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("EDB2F7"), width: 3),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("EDB2F7"), width: 3),
                                    ),
                                    hintText: contr.name.value),
                                onChanged: (value) {
                                  contr.name.value = value;
                                },
                              ),
                            )),
                        SizedBox(
                          width: cts.maxWidth * 0.05,
                        ),
                        // )
                        //making the change here
                        SizedBox(
                          height: cts.maxHeight * 0.05,
                          width: cts.maxWidth * 0.3,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      HexColor("D9D9D9"))),
                              onPressed: () {
                                if (_namekey.currentState!.validate()) {
                                  contr.name.value = namecontroller.value.text;
                                  setState(() {
                                    nameeditbutton = true;
                                    nameeditfield = false;
                                  });
                                }
                              },
                              child: Text(
                                "Update",
                                style: GoogleFonts.nunitoSans(
                                  color: HexColor("390042"),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                SizedBox(
                  height: cts.maxHeight * 0.01,
                ),
                if (!nameeditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Divider(
                      color: HexColor("EDB2F7"),
                      thickness: 3,
                    ),
                  ),

                //address
                SizedBox(
                  height: cts.maxHeight * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Address",
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("390042"),
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: cts.maxWidth * 0.08,
                      ),
                      if (adeditbutton)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              adeditbutton = false;
                              adeditfield = true;
                            });
                          },
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                        )
                    ],
                  ),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.03,
                ),
                if (!adeditfield)
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.05),
                    child: Text(
                      contr.ad.value,
                      style: GoogleFonts.nunitoSans(fontSize: 15),
                    ),
                  )
                else if (adeditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Container(
                            width: cts.maxWidth * 0.5,
                            child: Form(
                              key: _adkey,
                              child: TextFormField(
                                validator: (value) =>
                                    SimpleValidations.postalAddressValidator(
                                        value),
                                controller: adcontroller,
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("EDB2F7"), width: 3),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("EDB2F7"), width: 3),
                                    ),
                                    hintText: contr.ad.value),
                                onChanged: (value) {
                                  contr.ad.value = value;
                                },
                              ),
                            )),
                        SizedBox(
                          width: cts.maxWidth * 0.05,
                        ),
                        // )
                        SizedBox(
                          height: cts.maxHeight * 0.05,
                          width: cts.maxWidth * 0.3,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      HexColor("D9D9D9"))),
                              onPressed: () {
                                if (_adkey.currentState!.validate()) {
                                  contr.ad.value = adcontroller.value.text;
                                  setState(() {
                                    adeditbutton = true;
                                    adeditfield = false;
                                  });
                                }
                              },
                              child: Text(
                                "Update",
                                style: GoogleFonts.nunitoSans(
                                  color: HexColor("390042"),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                SizedBox(
                  height: cts.maxHeight * 0.01,
                ),
                if (!adeditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Divider(
                      color: HexColor("EDB2F7"),
                      thickness: 3,
                    ),
                  ),
                //insta
                SizedBox(
                  height: cts.maxHeight * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Instagram",
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("390042"),
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: cts.maxWidth * 0.05,
                      ),
                      if (instaeditbutton)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              instaeditbutton = false;
                              instaeditfield = true;
                            });
                          },
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                        )
                    ],
                  ),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.03,
                ),
                if (!instaeditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      contr.instagram.value,
                      style: GoogleFonts.nunitoSans(
                          color: HexColor("390042"), fontSize: 15),
                    ),
                  )
                else if (instaeditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Container(
                            width: cts.maxWidth * 0.5,
                            child: Form(
                              key: _instakey,
                              child: TextFormField(
                                validator: (value) =>
                                    SimpleValidations.emptyFieldValidator(
                                        value),
                                controller: instacontroller,
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("EDB2F7"), width: 3),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("EDB2F7"), width: 3),
                                    ),
                                    hintText: contr.instagram.value),
                                onChanged: (value) {
                                  contr.instagram.value = value;
                                },
                              ),
                            )),
                        SizedBox(
                          width: cts.maxWidth * 0.05,
                        ),
                        // )
                        SizedBox(
                          height: cts.maxHeight * 0.05,
                          width: cts.maxWidth * 0.3,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      HexColor("D9D9D9"))),
                              onPressed: () {
                                if (_instakey.currentState!.validate()) {
                                  contr.instagram.value =
                                      instacontroller.value.text;
                                  setState(() {
                                    instaeditbutton = true;
                                    instaeditfield = false;
                                  });
                                }
                              },
                              child: Text(
                                "Update",
                                style: GoogleFonts.nunitoSans(
                                  color: HexColor("390042"),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                SizedBox(
                  height: cts.maxHeight * 0.01,
                ),
                if (!instaeditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Divider(
                      color: HexColor("EDB2F7"),
                      thickness: 3,
                    ),
                  ),
                //email

                SizedBox(
                  height: cts.maxHeight * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("390042"),
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: cts.maxWidth * 0.15,
                      ),
                      if (emaileditbutton)
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              emaileditbutton = false;
                              emaileditfield = true;
                            });
                          },
                          child: Icon(
                            Icons.edit,
                            size: 20,
                          ),
                        )
                    ],
                  ),
                ),
                SizedBox(
                  height: cts.maxHeight * 0.03,
                ),
                if (!emaileditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      contr.email.value,
                      style: GoogleFonts.nunitoSans(fontSize: 15),
                    ),
                  )
                else if (emaileditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Container(
                            width: cts.maxWidth * 0.5,
                            child: Form(
                              key: _emailkey,
                              child: TextFormField(
                                validator: (value) =>
                                    SimpleValidations.emailValidator(value),
                                controller: emailcontroller,
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("EDB2F7"), width: 3),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: HexColor("EDB2F7"), width: 3),
                                    ),
                                    hintText: contr.email.value),
                                onChanged: (value) {
                                  contr.email.value = value;
                                },
                              ),
                            )),
                        SizedBox(
                          width: cts.maxWidth * 0.05,
                        ),
                        // )
                        SizedBox(
                          height: cts.maxHeight * 0.05,
                          width: cts.maxWidth * 0.3,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      HexColor("D9D9D9"))),
                              onPressed: () {
                                if (_emailkey.currentState!.validate()) {
                                  contr.email.value =
                                      emailcontroller.value.text;
                                  setState(() {
                                    emaileditbutton = true;
                                    emaileditfield = false;
                                  });
                                }
                              },
                              child: Text("Update",
                                  style: GoogleFonts.nunitoSans(
                                      color: Colors.black))),
                        )
                      ],
                    ),
                  ),
                SizedBox(
                  height: cts.maxHeight * 0.01,
                ),
                if (!emaileditfield)
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Divider(
                      color: HexColor("EDB2F7"),
                      thickness: 3,
                    ),
                  ),
              ],
            );
          }),
        )),
        // Form(
        // key: _adkey,
        // child: Column(
        // children: <Widget>[
        // Padding(
        // padding: EdgeInsets.only(left: 10),
        // child: Text("add",
        // style: GoogleFonts.nunitoSans(
        // fontWeight: FontWeight.w800))),
        // Padding(
        // padding: EdgeInsets.only(left: 40.0),
        // child: TextFormField(
        // validator: (value) =>
        // SimpleValidations.postalAddressValidator(value),
        // controller: adcontroller,
        // decoration: InputDecoration(
        // border: InputBorder.none,
        // hintText: contr.name.value),
        // onChanged: (value) {
        // namechange = true;
        // anychange = true;
        // contr.name.value = value;
        // },
        // ),
        // ),
        // Padding(
        // padding: EdgeInsets.only(left: 30.0),
        // child: Divider(
        // color: HexColor("EDB2F7"),
        // thickness: 3,
        // ),
        // ),
        // ],
        // )),
        // ElevatedButton(
        // child: Text("Hit"),
        // onPressed: () {
        // if (_namekey.currentState!.validate()) {
        // namevalid = true;

        // Navigator.pushReplacement(
        // context,
        // MaterialPageRoute(
        // builder: (context) => Profile()
        // )
        // );
        // }

        // if (_adkey.currentState!.validate()) {
        // addvalid = true;
        // }
        // if (namevalid || addvalid) {
        // Navigator.pushReplacement(
        // context,
        // MaterialPageRoute(
        // builder: (context) => Profile()
        // )
        // );
        // }
        // },
        // ),
      ),
    );
  }
}
