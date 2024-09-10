import 'package:cometdev/clippednav.dart';
import 'package:cometdev/controller/detailscontroller.dart';
import 'package:cometdev/homeone.dart';
import 'package:cometdev/mainwithnav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:simple_form_validations/simple_form_validations.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:dob_input_field/dob_input_field.dart';
import 'package:fast_validator/fast_validator.dart';
import 'package:date_format_field/date_format_field.dart';
import 'package:intl/intl.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController dobcontroller = new TextEditingController();
  TextEditingController gendercontroller = new TextEditingController();
  TextEditingController pancontroller = new TextEditingController();
  final _dateController = new TextEditingController();

  Detailscontroller contr = Get.put(Detailscontroller());
  String name = '';
  String email = '';
  String dob = '';
  String gender = '';
  String gendernotentered = '';
  Color contcolor = Colors.white;
  List<String> genders = ['Male', 'Female', 'Others'];
  bool malechosen = false;
  bool femalechosen = false;
  bool otherchosen = false;
  Color malecontainer = Colors.white;
  Color femalecontainer = Colors.white;
  Color othercontainer = Colors.white;

  DateTime selectedDate = DateTime.now();

  // Function to show the date picker dialog
  Future<void> _selectDate(BuildContext context) async {
    // Display the date picker and await user selection
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate:
          selectedDate, // Set the initial date to the currently selected date
      firstDate: DateTime(2023, 1), // Set the minimum selectable date
      lastDate: DateTime(2023, 12), // Set the maximum selectable date
    );
    if (picked != null) {
      // If a date is selected, update the selectedDate variable and rebuild the UI
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Future<void> _selectDate() async {
      await showDatePicker(
          context: context,
          firstDate: DateTime(19000),
          lastDate: DateTime.now());
    }

    return Scaffold(
      backgroundColor: HexColor("FADEFF"),
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height*0.02,
                ),
                // Padding(
                // padding: const EdgeInsets.only(left: 20.0, right: 20),
                // child: Container(
                // child: Image.asset("assets/cometintro.png"),
                // ),
                // ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Enter your details",
                            style: GoogleFonts.nunitoSans(
                                color: HexColor("390042"),
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Name",
                            style: GoogleFonts.nunitoSans(
                              color:HexColor("390042"),
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 30),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            width: 400,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              controller: namecontroller,
                              decoration: InputDecoration(
                                  hintText: 'John Doe',
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10))),
                              validator: (value) =>
                                  SimpleValidations.nameValidator(value),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email",
                            style: GoogleFonts.nunitoSans(
                              color:HexColor("390042"),
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 30),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            width: 400,
                            child: TextFormField(
                              onChanged: (value) {
                                contr.email.value = value;
                              },
                              controller: emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: 'JohnDoe123@gmail.com',
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10))),
                              validator: (value) =>
                                  SimpleValidations.emailValidator(value),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "DOB",
                            style: GoogleFonts.nunitoSans(
                              color:HexColor("390042"),
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 30),
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'DD-MM-YYYY',
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10))),
                              readOnly: true,
                              controller: _dateController,
                              onTap: () async {
                                await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2025),
                                ).then((selectedDate) {
                                  if (selectedDate != null) {
                                    _dateController.text =
                                        DateFormat('yyyy-MM-dd')
                                            .format(selectedDate);
                                  }
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter date.';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      )

                      // Container(
                      // decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20)
                      // ),
                      // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      // child: DOBInputField(
                      // inputDecoration: InputDecoration(
                      // border: BoxDecoration(
                      //
                      // )
                      // ),
                      // firstDate: DateTime(1900),
                      // lastDate: DateTime.now(),
                      // showLabel: true,
                      // showCursor: true,
                      // autovalidateMode: AutovalidateMode.always,
                      //
                      // )),
                      ,
                      // Padding(
                      // padding: EdgeInsets.only(left: 20.0, right: 30),
                      // child: Material(
                      // borderRadius: BorderRadius.circular(10),
                      // elevation: 3,
                      // child: Container(
                      // decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10)),
                      // width: 400,
                      // child: TextFormField(
                      // readOnly: true,
                      // onTap: () {
                      // _selectDate();
                      // },
                      // controller: dobcontroller,
                      // keyboardType: TextInputType.number,
                      // decoration: InputDecoration(
                      // hintText: 'DD/MM/YYYY',
                      // fillColor: Colors.white,
                      // filled: true,
                      // focusedBorder: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.white),
                      // borderRadius: BorderRadius.circular(10)),
                      // enabledBorder: OutlineInputBorder(
                      // borderSide: BorderSide(color: Colors.white),
                      // borderRadius: BorderRadius.circular(10))),
                      // validator: (value)=> SimpleValidations.emptyFieldValidator(value),
                      // ),
                      // ),
                      // ),
                      // ),

                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "PAN Number",
                            style: GoogleFonts.nunitoSans(
                              color:HexColor("390042"),
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 30),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          elevation: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            width: 400,
                            child: TextFormField(
                              controller: pancontroller,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  hintText: 'Pan Card Number',
                                  fillColor: Colors.white,
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10))),
                              validator: (value) =>
                                  SimpleValidations.panCardValidator(value),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Gender",
                            style: GoogleFonts.nunitoSans(
                              color:HexColor("390042"),
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          children: <Widget>[
                            InkWell(
                              onDoubleTap: () {
                                setState(() {
                                  malechosen = false;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  if (femalechosen || otherchosen) {
                                    gender = 'Male';
                                    otherchosen = false;
                                    malechosen = true;
                                    femalechosen = false;
                                    gendernotentered = '';
                                  }
                                  gender = 'Male';
                                  malechosen = true;
                                });
                              },
                              child: Material(
                                elevation: 3,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  child: Center(child: Text("Male",style: GoogleFonts.nunitoSans(color: malechosen ? Colors.white : Colors.black,) ),),
                                  decoration: BoxDecoration(
                                    color: malechosen
                                        ? HexColor("390042")
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            //female
                            InkWell(
                              onDoubleTap: () {
                                setState(() {
                                  femalechosen = false;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  if (malechosen || otherchosen) {
                                    gender = 'Female';
                                    otherchosen = false;
                                    malechosen = false;
                                    femalechosen = true;
                                    gendernotentered = '';
                                  }
                                  gender = 'Female';
                                  femalechosen = true;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(10),
                                elevation: 3,
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  child: Center(child: Text("Female",style: GoogleFonts.nunitoSans(color: femalechosen ? Colors.white : Colors.black,))),
                                  decoration: BoxDecoration(
                                    color: femalechosen
                                        ? HexColor("390042")
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            //Others
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (malechosen || femalechosen) {
                                    gender = 'Others';
                                    otherchosen = true;
                                    malechosen = false;
                                    femalechosen = false;
                                    gendernotentered = '';
                                  }
                                });
                              },
                              onDoubleTap: () {
                                setState(() {
                                  otherchosen = false;
                                });
                              },
                              child: Material(
                                borderRadius: BorderRadius.circular(10),
                                elevation: 3,
                                child: Container(
                                  width: 80,
                                  height: 30,
                                  child: Center(child: Text("Others",style: GoogleFonts.nunitoSans(color: otherchosen ? Colors.white : Colors.black,))),
                                  decoration: BoxDecoration(
                                    color: otherchosen
                                        ? HexColor("390042")
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0, right: 50),
                        child: Text(
                          gendernotentered,
                          style: GoogleFonts.nunitoSans(
                              color: Colors.red, fontSize: 12),
                        ),
                      )

                      // GenderPickerWithImage(
                      // showOtherGender: true,
                      // verticalAlignedText: false,
                      // selectedGender: Gender.Male,
                      // selectedGenderTextStyle: TextStyle(
                      // color: Color(0xFF8b32a8),
                      // fontWeight: FontWeight.bold),
                      // unSelectedGenderTextStyle: TextStyle(
                      // color: Colors.white, fontWeight: FontWeight.normal),
                      // onChanged: (gender) {
                      // print(gender);
                      // },
                      // equallyAligned: true,
                      // animationDuration: Duration(milliseconds: 300),
                      // isCircular: true,
                      // default : true,
                      // opacityOfGradient: 0.4,
                      // padding: const EdgeInsets.all(3),
                      // size: 50, //default : 40
                      // ),

                      ,
                      SizedBox(
                        height: 10,
                      ),
                      // Obx(()=>Text(contr.name.value)),
                      Container(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (!malechosen && !femalechosen && !otherchosen)
                                gendernotentered = "Choose gender";
                            });
                            // contr.name.value=namecontroller.value.text;
                            if (_formKey.currentState!.validate()) {
                              contr.name.value = namecontroller.value.text;
                              contr.email.value = emailcontroller.value.text;
                              contr.dob.value = dobcontroller.value.text;
                              contr.pan.value = pancontroller.value.text;
                              contr.gender.value = gendercontroller.value.text;
                              print("Gender" + contr.gender.value);

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()),
                              );
                            }

                            //add error mechanism
                          },
                          child: Center(
                              child: Text(
                            "Submit",
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
                      // new Container(
                      // padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                      // child: new ElevatedButton(
                      // child: const Text('Submit'),
                      // onPressed: () {
                      // It returns true if the form is valid, otherwise returns false
                      // if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a Snackbar.
                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      // content: Text('Data is in processing.')));
                      // }
                      // },
                      // )),
                    ],
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
