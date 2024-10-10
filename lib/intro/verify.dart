import 'package:maincomet/controller.dart';
// import 'package:cometdev/intro/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutterotpfield/flutterotpfield.dart';
import 'package:maincomet/intro/form.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScrRev extends StatefulWidget {
  final String phone;
  const OtpScrRev(this.phone);

  @override
  State<OtpScrRev> createState() => _OtpScrRevState();
}

class _OtpScrRevState extends State<OtpScrRev> {
  Detailscontroller contr = Get.put(Detailscontroller());
  @override
  TextEditingController otpcontroller = new TextEditingController();
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  return Column(
                    children: <Widget>[
                      SizedBox(
                        height: cts.maxHeight * 0.1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: cts.maxWidth * 0.1,
                            right: cts.maxWidth * 0.1333),
                        child: Container(
                          child: Image.asset("assets/cometintro.png"),
                        ),
                      ),
                      SizedBox(
                        height: cts.maxHeight * 0.05,
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
                        height: cts.maxHeight * 0.04,
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
                        width: cts.maxWidth * 0.8,
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
                        height: cts.maxHeight * 0.03,
                      ),
                      Container(
                        width: cts.maxWidth * 0.4,
                        child: ElevatedButton(
                          onPressed: () {
                            contr.phone.value = widget.phone;
                            String otp = otpcontroller.value.text;
                            if (otp != '' && otp.length == 6) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FormRevScreen(),
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
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor:
                                MaterialStateProperty.all(HexColor("504253")),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: cts.maxHeight * 0.1,
                      ),
                      Text(
                        "By clicking on 'Login', you are agreeing to our",
                        style: GoogleFonts.nunitoSans(
                            color: HexColor("390042"), fontSize: 15),
                      ),
                      Flexible(
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Flexible(
                                    // height: MediaQuery.sizeOf(context).height + 200,
                                    // width: MediaQuery.sizeOf(context).width,
                                    // height: 1000,
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(
                                          height: cts.maxHeight * 0.01,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, right: 20),
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
                                          height: cts.maxHeight * 0.01,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, right: 20),
                                          child: Text(
                                            "At COMET CURRENCY, your privacy is paramount. We collect only essential data to enhance your experience and your data is integrated with secure encryption.Your information is used solely to facilitate app functions, process payments, and improve services.We only share your essential personal information with trusted partners bound by confidentiality agreements. For privacy concerns, contact us at contactus@cometcurrency.com.By using COMET CURRENCY, you agree to this Privacy Policy.",
                                            textAlign: TextAlign.left,
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
                                          padding: EdgeInsets.only(right: 20),
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              style: ButtonStyle(
                                                shape:
                                                    MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
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
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
