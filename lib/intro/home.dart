// import 'package:cometdev/categories.dart';
// import 'package:cometdev/homeone.dart';
// import 'package:cometdev/homeonerev.dart';
// import 'package:cometdev/tranpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:maincomet/intro/phone.dart';
import 'package:maincomet/pages/one.dart';
import 'package:maincomet/pages/four.dart';
import 'package:maincomet/pages/two.dart';
import 'package:maincomet/profile/profile.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:maincomet/controller.dart';
import 'package:get/get.dart';
// import 'package:cometdev/profile/profile.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key}) : super(key: key);

  @override
  _MyHomePage1State createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  late PageController _pageController;
  int selectedIndex = 0;
  bool _colorful = false;
  Detailscontroller contr = Get.put(Detailscontroller());
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("F7F5F2"),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: HexColor("F7F5F2"),
        actions: <Widget>[
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                  onTap: () {
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    // builder: (context) => const Profilerev()));
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(contr.avatar.value),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: HexColor("#e8bcf0"),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  )),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _pageController,
                children: _listOfWidget,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _colorful
          ? SlidingClippedNavBar.colorful(
              backgroundColor: HexColor("DB66F0"),
              onButtonPressed: onButtonPressed,
              iconSize: 30,
              // activeColor: const Color(0xFF01579B),
              selectedIndex: selectedIndex,
              barItems: <BarItem>[
                BarItem(
                  icon: Icons.home,
                  title: 'Home',
                  activeColor: Colors.blue,
                  inactiveColor: Colors.orange,
                ),
                BarItem(
                  icon: Icons.shop,
                  title: 'Shop',
                  activeColor: Colors.yellow,
                  inactiveColor: Colors.green,
                ),
                BarItem(
                  icon: Icons.history,
                  title: 'Transanctions',
                  activeColor: Colors.blue,
                  inactiveColor: Colors.red,
                ),
              ],
            )
          : SlidingClippedNavBar(
              backgroundColor: HexColor("DB66F0"),
              onButtonPressed: onButtonPressed,
              iconSize: 30,
              activeColor: Colors.white,
              selectedIndex: selectedIndex,
              barItems: <BarItem>[
                BarItem(
                  icon: Icons.home,
                  title: 'Home',
                ),
                BarItem(
                  icon: Icons.shopping_cart_rounded,
                  title: 'Shop',
                ),
                BarItem(icon: Icons.history_sharp, title: 'Transanctions')
              ],
            ),
    );
  }
}

// icon size:24 for fontAwesomeIcons
// icons size: 30 for MaterialIcons

List<Widget> _listOfWidget = <Widget>[Homeonerev(), catpage(), Tranpage()];
