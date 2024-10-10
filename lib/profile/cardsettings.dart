import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Cardsettings extends StatefulWidget {
  const Cardsettings({super.key});

  @override
  State<Cardsettings> createState() => _CardsettingsState();
}

class _CardsettingsState extends State<Cardsettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Settings"),
      ),
      body: Container(
          child: LayoutBuilder(builder: (BuildContext ctx, BoxConstraints cts) {
        return Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: <Widget>[
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 3,
                    child: Container(
                      height: cts.maxHeight * 0.06,
                      width: cts.maxWidth * 0.9,
                      decoration: BoxDecoration(
                          color: HexColor("FFFFFF"),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 5),
                        child: Text(
                          "Sleep Mode",
                          style: GoogleFonts.nunitoSans(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 3,
                    child: Container(
                      height: cts.maxHeight * 0.06,
                      width: cts.maxWidth * 0.9,
                      decoration: BoxDecoration(
                          color: HexColor("FFFFFF"),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 5),
                        child: Text(
                          "Freeze Mode",
                          style: GoogleFonts.nunitoSans(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 3,
                    child: Container(
                      height: cts.maxHeight * 0.06,
                      width: cts.maxWidth * 0.9,
                      decoration: BoxDecoration(
                          color: HexColor("FFFFFF"),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 5),
                        child: Text(
                          "Block Card",
                          style: GoogleFonts.nunitoSans(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      })),
    );
  }
}
