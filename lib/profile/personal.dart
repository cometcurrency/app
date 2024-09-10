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
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 10.0, right: 250),
//                       child: Text(
//                         "Address",
//                         style: GoogleFonts.nunitoSans(
//                             fontWeight: FontWeight.w800, fontSize: 20),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(left: 40.0),
//                       child: TextField(
//                         controller: adcontroller,
//                         decoration: InputDecoration(
//                             border: InputBorder.none, hintText: contr.ad.value),
//                         onChanged: (value) {
//                           adchange = true;
//                           anychange = true;
//                           contr.ad.value = value;
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
