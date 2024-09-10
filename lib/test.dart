import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        color: Colors.white,
        height: height,
        width: width,
        child: LayoutBuilder(
            builder: (BuildContext ctx, BoxConstraints constraints) {
          return Column(
            children: <Widget>[
              SizedBox(
                height: constraints.maxHeight * 0.1,
              ),
              Container(
                color: Colors.black,
                height: constraints.maxHeight * 0.2,
                width: constraints.maxWidth * 0.5,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.2,
              ),
              Container(
                color: Colors.red,
                height: constraints.maxHeight * 0.3,
                width: constraints.maxWidth * 0.5,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.02,
              ),
              Container(
                color: Colors.purple,
                height: constraints.maxHeight * 0.02,
                width: constraints.maxWidth * 0.5,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.02,
              ),
              Container(
                color: Colors.purple,
                height: constraints.maxHeight * 0.02,
                width: constraints.maxWidth * 0.5,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.02,
              ),
              Container(
                color: Colors.purple,
                height: constraints.maxHeight * 0.02,
                width: constraints.maxWidth * 0.5,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.02,
              ),
              Container(
                color: Colors.purple,
                height: constraints.maxHeight * 0.02,
                width: constraints.maxWidth * 0.5,
              ),
              SizedBox(
                height: constraints.maxHeight * 0.02,
              ),
              Container(
                color: Colors.purple,
                height: constraints.maxHeight * 0.02,
                width: constraints.maxWidth * 0.5,
              ),
            ],
          );
        }),
      ),
    );
  }
}
