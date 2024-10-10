import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Share extends StatefulWidget {
  const Share({super.key});

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor("ECECEC"),
      body: Container(
        child: LayoutBuilder(
          builder: (BuildContext ctx, BoxConstraints cts) {
            return ListView(children: <Widget>[
              SizedBox(
                height: cts.maxHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Share",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: cts.maxHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor("FFFFFF"),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: cts.maxHeight * 0.10,
                          width: cts.maxWidth * 0.9,
                          child: Padding(
                            padding: EdgeInsets.only(right: 30.0),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "25% cashback",
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: HexColor("504253"),
                            borderRadius: BorderRadius.circular(10)),
                        width: cts.maxWidth * 0.35,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Post",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: cts.maxHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: HexColor("FFFFFF"),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: cts.maxHeight * 0.10,
                          width: cts.maxWidth * 0.9,
                          child: Padding(
                            padding: EdgeInsets.only(right: 30.0),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "10% cashback",
                                  style: TextStyle(fontSize: 20),
                                )),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: HexColor("504253"),
                            borderRadius: BorderRadius.circular(10)),
                        width: cts.maxWidth * 0.35,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Story",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: cts.maxHeight * 0.02,
              ),
              Center(
                child: Text(
                  "How it works ? ",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(height: cts.maxHeight * 0.017),
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30),
                child: Stack(
                  children: <Widget>[
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        decoration: BoxDecoration(
                            color: HexColor("FFFFFF"),
                            borderRadius: BorderRadius.circular(30)),
                        height: 350,
                        width: cts.maxWidth * 0.9,
                        child: Text(""),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, left: 10.0, right: 10),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/share/shop.png",
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(
                                width: cts.maxWidth * 0.18,
                              ),
                              Flexible(
                                child: Text(
                                    "Buy using Comet Currency from any of our partnered brand."),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: cts.maxHeight * 0.06,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, left: 10.0, right: 10),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/share/share.png",
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(
                                width: cts.maxWidth * 0.18,
                              ),
                              Flexible(
                                child: Text(
                                    "Share your purchases on social media as a story or post."),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: cts.maxHeight * 0.06,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(top: 10, left: 10.0, right: 10),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/share/profile.png",
                                height: 70,
                                width: 70,
                              ),
                              SizedBox(
                                width: cts.maxWidth * 0.18,
                              ),
                              Flexible(
                                child: Text(
                                    "Tag the purchased brand and Comet Currency to avail cashback"),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]);
          },
        ),
      ),
    );
  }
}
