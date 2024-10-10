import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:maincomet/controller.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:simple_form_validations/simple_form_validations.dart';

class PD extends StatefulWidget {
  const PD({super.key});

  @override
  State<PD> createState() => _PDState();
}

class _PDState extends State<PD> {
  bool nameedit = false;
  bool dobedit = false;
  bool numberedit = false;
  bool emailedit = false;
  final _dateController = new TextEditingController();
  Detailscontroller contr = Get.put(Detailscontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Personal Details"),
        ),
        body: LayoutBuilder(builder: (BuildContext ctx, BoxConstraints cts) {
          return Container(
            child: Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  //name
                  (nameedit)
                      ? Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: HexColor("FFFFFF")),
                              width: cts.maxWidth * 0.8,
                              height: cts.maxHeight * 0.07,
                              child: Padding(
                                padding: EdgeInsets.only(left: 25.0),
                                child: TextFormField(
                                  validator: (value) =>
                                      SimpleValidations.nameValidator(value),
                                  onChanged: (Value) {
                                    setState(() {
                                      contr.name.value = Value;
                                    });
                                  },
                                  onTapOutside: (event) {
                                    setState(() {
                                      nameedit = false;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: contr.name.value),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  nameedit = true;
                                });
                              },
                              child: Container(
                                width: cts.maxWidth * 0.8,
                                height: cts.maxHeight * 0.05,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: HexColor("FFFFFF")),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20.0, top: 5),
                                  child: Text(
                                    contr.name.value,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: 30,
                  ),
                  //email
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  (emailedit)
                      ? Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: HexColor("FFFFFF")),
                              width: cts.maxWidth * 0.8,
                              height: cts.maxHeight * 0.07,
                              child: Padding(
                                padding: EdgeInsets.only(left: 25.0),
                                child: TextFormField(
                                  validator: (value) =>
                                      SimpleValidations.emailValidator(value),
                                  onChanged: (Value) {
                                    setState(() {
                                      contr.email.value = Value;
                                    });
                                  },
                                  onTapOutside: (event) {
                                    setState(() {
                                      emailedit = false;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: contr.email.value),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  emailedit = true;
                                });
                              },
                              child: Container(
                                width: cts.maxWidth * 0.8,
                                height: cts.maxHeight * 0.05,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: HexColor("FFFFFF")),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20.0, top: 5),
                                  child: Text(
                                    contr.email.value,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: 30,
                  ),
                  //dob
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "DOB",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  // (dobedit)
                  // ? Padding(
                  // padding: EdgeInsets.only(left: 10),
                  // child: Align(
                  // alignment: Alignment.centerLeft,
                  // child: Material(
                  // child: Container(
                  // height: cts.maxHeight * 0.07,
                  // width: cts.maxWidth * 0.8,
                  // decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10)),
                  // child: Padding(
                  // padding: EdgeInsets.only(left: 5),
                  // child: TextFormField(
                  // onChanged: (value) {
                  // setState(() {
                  // contr.dob.value = value;
                  // });
                  // },
                  // onTapOutside: (event) {
                  // setState(() {
                  // dobedit = false;
                  // });
                  // },
                  // decoration: InputDecoration(
                  // border: InputBorder.none,
                  // hintText: contr.dob.value)),
                  // ),
                  // ),
                  // ),
                  // ))
                  // : Container(
                  // child: Text(contr.dob.value),
                  // ),
                  (dobedit)
                      ? Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Material(
                              elevation: 3,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: cts.maxWidth * 0.8,
                                height: cts.maxHeight * 0.07,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: TextFormField(
                                    onChanged: (value) {
                                      setState(() {
                                        contr.dob.value = value;
                                      });
                                    },
                                    onTapOutside: (event) {
                                      setState(() {
                                        dobedit = false;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: contr.dob.value),

                                    // decoration: InputDecoration(
                                    // hintText: 'DD-MM-YYYY',
                                    // fillColor: Colors.white,
                                    // filled: true,
                                    // focusedBorder: OutlineInputBorder(
                                    // borderSide:
                                    // BorderSide(color: Colors.white),
                                    // borderRadius:
                                    // BorderRadius.circular(10)),
                                    // enabledBorder: OutlineInputBorder(
                                    // borderSide:
                                    // BorderSide(color: Colors.white),
                                    // borderRadius:
                                    // BorderRadius.circular(10))),

                                    controller: _dateController,
                                    onTap: () async {
                                      await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2025),
                                      ).then((selectedDate) {
                                        if (selectedDate != null &&
                                            selectedDate
                                                .isBefore(DateTime.now())) {
                                          _dateController.text =
                                              DateFormat('yyyy-MM-dd')
                                                  .format(selectedDate);
                                          contr.dob.value =
                                              _dateController.text;
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
                            ),
                          ),
                        )
                      // Padding(
                      // padding: EdgeInsets.only(left: 10.0),
                      // child: Align(
                      // alignment: Alignment.centerLeft,
                      // child: Container(
                      // decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20),
                      // color: HexColor("FFFFFF")),
                      // width: cts.maxWidth * 0.8,
                      // height: cts.maxHeight * 0.07,
                      // child: Padding(
                      // padding: EdgeInsets.only(left: 25.0),
                      // child: TextFormField(
                      // validator: (value) =>
                      // SimpleValidations.nameValidator(value),
                      // onChanged: (Value) {
                      // setState(() {
                      // contr.dob.value = Value;
                      // });
                      // },
                      // onTapOutside: (event) {
                      // setState(() {
                      // dobedit = false;
                      // });
                      // },
                      // decoration: InputDecoration(
                      // border: InputBorder.none,
                      // hintText: contr.dob.value),
                      // ),
                      // ),
                      // ),
                      // ),
                      // )
                      : Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  dobedit = true;
                                });
                              },
                              child: Container(
                                width: cts.maxWidth * 0.8,
                                height: cts.maxHeight * 0.05,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: HexColor("FFFFFF")),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20.0, top: 5),
                                  child: Text(
                                    contr.dob.value,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: 30,
                  ),
                  //mobile number
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Mobile Number",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  (numberedit)
                      ? Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: HexColor("FFFFFF")),
                              width: cts.maxWidth * 0.8,
                              height: cts.maxHeight * 0.07,
                              child: Padding(
                                padding: EdgeInsets.only(left: 25.0),
                                child: TextFormField(
                                  validator: (value) =>
                                      SimpleValidations.nameValidator(value),
                                  onChanged: (Value) {
                                    setState(() {
                                      contr.phone.value = Value;
                                    });
                                  },
                                  onTapOutside: (event) {
                                    setState(() {
                                      numberedit = false;
                                    });
                                  },
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: contr.phone.value),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 5),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  numberedit = true;
                                });
                              },
                              child: Container(
                                width: cts.maxWidth * 0.8,
                                height: cts.maxHeight * 0.05,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: HexColor("FFFFFF")),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20.0, top: 5),
                                  child: Text(
                                    contr.phone.value,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          QuickAlert.show(
                            context: context,
                            type: QuickAlertType.success,
                            text: 'dob' +
                                contr.dob.value +
                                'name' +
                                contr.name.value,
                          );
                        });
                      },
                      child: Text("Submit"))
                ],
              ),
            ),
          );
        }));
  }
}
