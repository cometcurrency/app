// import 'package:cometdev/intro/verify.dart';
// import 'package:cometdev/intro/verifyrev.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/helpers.dart';
import 'package:maincomet/intro/verify.dart';
import 'package:simple_form_validations/simple_form_validations.dart';

class PhoneRev extends StatefulWidget {
  const PhoneRev({super.key});

  @override
  State<PhoneRev> createState() => _PhoneRevState();
}

class _PhoneRevState extends State<PhoneRev> {
  TextEditingController phonecontroller = new TextEditingController();
  TextEditingController countrycodecontroller = new TextEditingController();
  String phone = '';
  String countrycode = '+91';
  String phonenotentered = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: HexColor("FADEFF"),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Stack(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: Image.asset("assets/background.png"),
            ),
            Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child: LayoutBuilder(
                    builder: (BuildContext ctx, BoxConstraints cts) {
                  return Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: cts.maxHeight * 0.15,
                        ),
                        Image.asset("assets/cometintro.png"),
                        SizedBox(
                          height: cts.maxHeight * 0.1,
                        ),
                        Text(
                          "First, add your mobile number",
                          style: GoogleFonts.nunitoSans(
                              color: HexColor("390042"),
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: cts.maxHeight * 0.05,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: cts.maxWidth * 0.2,
                            ),
                            Container(
                              height: 50,
                              width: cts.maxWidth * 0.12,
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
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
                            SizedBox(
                              width: cts.maxWidth * 0.005,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, top: 2),
                              height: 50,
                              width: cts.maxWidth * 0.5,
                              child: TextFormField(
                                controller: phonecontroller,
                                validator: (value) =>
                                    SimpleValidations.phoneNumberValidator(
                                        value),
                                textAlign: TextAlign.left,
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: '7032880020',
                                    errorBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    focusedErrorBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: cts.maxHeight * 0.01,
                        ),
                        Text(phonenotentered,
                            style: GoogleFonts.nunitoSans(color: Colors.red)),
                        SizedBox(
                          height: cts.maxHeight * 0.02,
                        ),
                        Container(
                          width: cts.maxHeight * 0.3,
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
                                    builder: (context) => OtpScrRev(
                                      phone,
                                    ),
                                  ),
                                );
                              } else if (phonecontroller.value.text.length <
                                  10) {
                                print("hello");
                                setState(() {
                                  phonenotentered =
                                      'Enter your phone number of 10 digits';
                                });
                              } else if (!isNumeric(
                                  phonecontroller.value.text)) {
                                print("hello");
                                setState(() {
                                  phonenotentered =
                                      'Enter only numbers of 10 digits';
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
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor:
                                  MaterialStateProperty.all(HexColor("504253")),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: cts.maxHeight * 0.09,
                        ),
                        Text(
                          "By clicking on 'Login', you are agreeing to our",
                          style: GoogleFonts.nunitoSans(
                            fontSize: 15,
                            color: HexColor("390042"),
                          ),
                        ),
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Flexible(
                                      // height: 800,
                                      // height:
                                      // MediaQuery.sizeOf(context).height - 500,
                                      // width: MediaQuery.sizeOf(context).width,
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: cts.maxHeight * 0.01,
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
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20),
                                                )),
                                          ),
                                          SizedBox(
                                            height: cts.maxHeight * 0.02,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.0, right: 20),
                                            child: Text(
                                              "At COMET CURRENCY, your privacy is paramount. We collect only essential data to enhance your experience and your data is integrated with secure encryption.Your information is used solely to facilitate app functions, process payments, and improve services.We only share your essential personal information with trusted partners bound by confidentiality agreements. For privacy concerns, contact us at contactus@cometcurrency.com.By using COMET CURRENCY, you agree to this Privacy Policy.",
                                              style: GoogleFonts.nunitoSans(
                                                fontSize: 18,
                                                color: HexColor("390042"),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: cts.maxHeight * 0.05,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 20.0),
                                            child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  style: ButtonStyle(
                                                      shape: MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(HexColor(
                                                                  "504253"))),
                                                  child: Text(
                                                    "Done",
                                                    style:
                                                        GoogleFonts.nunitoSans(
                                                            color: Colors.white,
                                                            fontSize: 20),
                                                  )),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Text(
                              "Privacy Policy",
                              style: GoogleFonts.nunitoSans(
                                  color: HexColor("390042"),
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
