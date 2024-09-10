import 'package:cometdev/controller/detailscontroller.dart';
import 'package:cometdev/intro/form.dart';
import 'package:cometdev/intro/verify.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/helpers.dart';
import 'package:simple_form_validations/simple_form_validations.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  String phone = '';
  String countrycode = '+91';
  String phonenotentered = '';
  TextEditingController phonecontroller = new TextEditingController();
  TextEditingController countrycodecontroller = new TextEditingController();
  //this contr might be an error for the white screen
  // Detailscontroller contr = Get.put(Detailscontroller());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: HexColor("FADEFF"),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: height * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    child: Image.asset("assets/cometintro.png"),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60, right: 20),
                  child: Text(
                    "First, add your mobile number",
                    style: GoogleFonts.nunitoSans(
                        color: HexColor("390042"),
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 70,
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      padding: EdgeInsets.only(left: 17, right: 17, top: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Text(
                        "+91",
                        style: GoogleFonts.nunitoSans(
                          color: HexColor("390042"),
                        ),
                      ),
                    ),
                    // Container(
                    // width: 55,
                    // child: TextFormField(
                    // keyboardType: TextInputType.number,
                    // controller: countrycodecontroller,
                    // decoration: InputDecoration(
                    // hintText: countrycode,
                    // fillColor: Colors.white,
                    // filled: true,
                    // focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.white),
                    // borderRadius: BorderRadius.circular(10)),
                    // enabledBorder: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.white),
                    // borderRadius: BorderRadius.circular(10))),
                    // ),
                    // ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 2),
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        validator: (value) =>
                            SimpleValidations.phoneNumberValidator(value),
                        textAlign: TextAlign.left,
                        keyboardType: TextInputType.number,
                        controller: phonecontroller,
                        decoration: InputDecoration(
                            hintText: '7032880020',
                            fillColor: Colors.white,
                            filled: true,
                            errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )

                    // Container(
                    // width: 70,
                    // decoration:
                    // BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    // child: TextFormField(
                    //
                    // keyboardType: TextInputType.number,
                    // controller: countrycodecontroller,
                    // decoration: InputDecoration(
                    // hintText: countrycode,
                    // fillColor: Colors.white,
                    // filled: true,
                    // enabledBorder: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.white),
                    // borderRadius: BorderRadius.circular(10))),
                    // ),
                    // ),
                    ,
                    // SizedBox(
                    // width: width*0.1,
                    // ),
                    // Container(
                    // width: 100,
                    // decoration:
                    // BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    // child: TextFormField(
                    // autofocus: true,
                    // keyboardType: TextInputType.number,
                    // controller: phonecontroller,
                    // decoration: InputDecoration(
                    // hintText: '703288020',
                    // fillColor: Colors.white,
                    // filled: true,
                    // enabledBorder: OutlineInputBorder(
                    // borderSide: BorderSide(color: Colors.white),
                    // borderRadius: BorderRadius.circular(10))),
                    // ),
                    // )
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.2, top: 2),
                  child: Text(
                    phonenotentered,
                    style: GoogleFonts.nunitoSans(color: Colors.red),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    width: 20,
                    child: ElevatedButton(
                      onPressed: () {
                        if (phonecontroller.value.text != '' &&
                            phonecontroller.value.text.length == 10 &&
                            isNumeric(phonecontroller.value.text)) {
                          phone = phonecontroller.value.text;
                          // contr.phone.value = phonecontroller.value.text;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OtpScr(
                                phone,
                              ),
                            ),
                          );
                        } else if (phonecontroller.value.text.length < 10) {
                          print("hello");
                          setState(() {
                            phonenotentered =
                                'Enter your phone number of 10 digits';
                          });
                        } else if (!isNumeric(phonecontroller.value.text)) {
                          print("hello");
                          setState(() {
                            phonenotentered = 'Enter only numbers of 10 digits';
                          });
                        } else {
                          setState(() {
                            phonenotentered = "Enter your phone number";
                          });
                        }
                        // if (_formKey.currentState!.validate()) {
                        // contr.phone.value = phonecontroller.value.text;
                        // print(contr.phone.value);
                        // String phone = contr.phone.value;
                        // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                        // builder: (context) => OtpScr(),
                        // ),
                        // );
                        // }
                        // if (_formKey.currentState!.validate())
                      },
                      child: Center(
                          child: Text(
                        "Login",
                        style: GoogleFonts.nunitoSans(
                            color: Colors.white, fontSize: 20),
                      )),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor:
                            MaterialStateProperty.all(HexColor("504253")),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.09,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: width * 0.1),
                  child: Text(
                    "By clicking on 'Login', you are agreeing to our",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 15,
                      color: HexColor("390042"),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              // height: 800,
                              child: LayoutBuilder(builder:
                                  (BuildContext ctx, BoxConstraints cts) {
                                return Column(
                                  children: <Widget>[
                                    SizedBox(
                                      height: cts.maxHeight * 0.06,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.0, right: 20),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Privacy Policy",
                                            style: GoogleFonts.nunitoSans(
                                                color: HexColor("390042"),
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20),
                                          )),
                                    ),
                                    SizedBox(
                                      height: cts.maxHeight * 0.05,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.0, right: 20),
                                      child: Text(
                                        "At COMET CURRENCY, your privacy is paramount. We collect only essential data to enhance your experience and your data is integrated with secure encryption.Your information is used solely to facilitate app functions, process payments, and improve services.We only share your essential personal information with trusted partners bound by confidentiality agreements. For privacy concerns, contact us at contactus@cometcurrency.com.By using COMET CURRENCY, you agree to this Privacy Policy.",
                                        style: GoogleFonts.nunitoSans(
                                          color: HexColor("390042"),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: cts.maxHeight * 0.1,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 20.0),
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: ButtonStyle(
                                                shape: MaterialStateProperty
                                                    .all(RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10))),
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        HexColor("504253"))),
                                            child: Text(
                                              "Done",
                                              style: GoogleFonts.nunitoSans(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            )),
                                      ),
                                    )
                                  ],
                                );
                              }),
                            );
                          });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.4, right: width * 0.1),
                      child: Text(
                        "Privacy Policy",
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("390042"),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget returnError() {
  return Text("Errpr");
}

Widget returnTes() {
  return Text("Yes");
}
