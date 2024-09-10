import 'package:cometdev/controller/detailscontroller.dart';
import 'package:cometdev/intro/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutterotpfield/flutterotpfield.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScr extends StatefulWidget {
  final String phone;
  const OtpScr(this.phone);

  @override
  State<OtpScr> createState() => _OtpScrState();
}

class _OtpScrState extends State<OtpScr> {
  Detailscontroller contr = Get.put(Detailscontroller());
  @override
  TextEditingController otpcontroller = new TextEditingController();
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
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: height * 0.09,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: width * 0.1, right: width * 0.1333),
                child: Container(
                  child: Image.asset("assets/cometintro.png"),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Text(
                "Enter OTP",
                style: GoogleFonts.nunitoSans(
                  fontSize: 22,
                  color: HexColor("390042"),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              // OtpTextField(
              // numberOfFields: 5,
              // filled: true,
              // fillColor: Colors.white,
              // disabledBorderColor: Colors.white,
              // borderColor: Colors.white,
              // set to true to show as box or false to show as dash
              // showFieldAsBox: true,
              // autoFocus: true,
              // focusedBorderColor: Colors.black,
              // runs when a code is typed in
              // onCodeChanged: (String code) {
              // handle validation or checks here
              // },
              // runs when every textfield is filled
              // onSubmit: (String verificationCode) {
              // showDialog(
              // context: context,
              // builder: (context) {
              // return AlertDialog(
              // title: Text("Verification Code"),
              // content: Text('Code entered is $verificationCode'),
              // );
              // });
              // }, // end onSubmit
              // ),
              Container(
                width: width * 0.8,
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  enableActiveFill: true,
                  autoFocus: true,
                  obscureText: true,
                  autoDismissKeyboard: true,
                  controller: otpcontroller,
                  cursorColor: Colors.black,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.number,
                  boxShadows: const [
                    BoxShadow(
                      offset: Offset(0, 3),
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ],
                  pinTheme: PinTheme(
                    inactiveColor: Colors.white,
                    selectedColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    activeColor: Colors.white,
                    selectedFillColor: Colors.white,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: width * 0.4,
                child: ElevatedButton(
                  onPressed: () {
                    contr.phone.value = widget.phone;
                    String otp = otpcontroller.value.text;
                    if (otp != '' && otp.length == 6) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormScreen(),
                        ),
                      );
                    } else {
                      //add error mechanism
                    }
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
              SizedBox(
                height: height * 0.1,
              ),
              Text(
                "By clicking on 'Login', you are agreeing to our",
                style: GoogleFonts.nunitoSans(
                    color: HexColor("390042"), fontSize: 15),
              ),
              Container(
                child: Expanded(
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Flexible(
                              // height: 1000,
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Privacy Policy",
                                        style: GoogleFonts.nunitoSans(
                                            color: HexColor("390042"),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    child: Text(
                                      "At COMET CURRENCY, your privacy is paramount. We collect only essential data to enhance your experience and your data is integrated with secure encryption.Your information is used solely to facilitate app functions, process payments, and improve services.We only share your essential personal information with trusted partners bound by confidentiality agreements. For privacy concerns, contact us at contactus@cometcurrency.com.By using COMET CURRENCY, you agree to this Privacy Policy.",
                                      style: GoogleFonts.nunitoSans(
                                        color: HexColor("390042"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.05,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 20),
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
                                                    BorderRadius.circular(20)),
                                          ),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  HexColor("504253")),
                                        ),
                                        child: Text(
                                          "Done",
                                          style: GoogleFonts.nunitoSans(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                      ),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
