import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class PersonalImp extends StatefulWidget {
  const PersonalImp({super.key});

  @override
  State<PersonalImp> createState() => _PersonalImpState();
}

class _PersonalImpState extends State<PersonalImp> {
  bool nameedit = false;
  bool dobedit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("F7F5F2"),
        appBar: AppBar(
          title: Text(
            "Personal Details",
          ),
        ),
        body: LayoutBuilder(builder: (BuildContext ctx, BoxConstraints cts) {
          return Container(
              child: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                "Name",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              (!nameedit)
                  ? Padding(
                      padding: EdgeInsets.only(left: 60.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            nameedit = true;
                          });
                        },
                        child: Container(
                          width: cts.maxWidth * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Text("Nithish Container"),
                        ),
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Container(
                        child: TextField(
                          onTapOutside: (event) {
                            setState(() {
                              nameedit = false;
                            });
                          },
                          decoration: InputDecoration(hintText: "Nithish Edit"),
                        ),
                      ),
                    ),
              SizedBox(
                height: 40,
              ),
              (!dobedit)
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          dobedit = true;
                        });
                      },
                      child: Container(
                        child: Text("Dob Container"),
                      ),
                    )
                  : TextField(
                      onTapOutside: (event) {
                        setState(() {
                          dobedit = false;
                        });
                      },
                      decoration: InputDecoration(hintText: "Dob Edit")),
            ]),
          ));
        }));
  }
}
