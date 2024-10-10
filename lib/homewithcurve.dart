import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:maincomet/intro/phone.dart';
import 'package:maincomet/pages/one.dart';
import 'package:maincomet/pages/four.dart';
import 'package:maincomet/pages/three.dart';
import 'package:maincomet/pages/two.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

// void main() {
// runApp(MyApp());
// }

class Homewithcurve extends StatefulWidget {
  @override
  _HomewithcurveState createState() => _HomewithcurveState();
}

class _HomewithcurveState extends State<Homewithcurve> {
  // a variable to store the current selected tab. can be used to control PageView
  int _selectedIndex = 0;
  List<Widget> pages = [Homeonerev(), catpage(), Share(), Tranpage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        // primaryColor: Colors.deepPurple[400],
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
        body: Center(child: pages[_selectedIndex]),
        // backgroundColor: Colors.deepPurple[400],
        // you can use the molten bar in the scaffold's bottomNavigationBar
        bottomNavigationBar: MoltenBottomNavigationBar(
          domeCircleColor: HexColor("504253"),
          borderColor: Colors.red,
          barColor: HexColor("504253"),
          domeCircleSize: 40,
          domeWidth: 890.0,
          selectedIndex: _selectedIndex,
          domeHeight: 12,
          barHeight: 60,
          // specify what will happen when a tab is clicked
          onTabChange: (clickedIndex) {
            setState(() {
              _selectedIndex = clickedIndex;
            });
          },
          // ansert as many tabs as you like
          tabs: [
            MoltenTab(
                icon: Image.asset("assets/navbar/home.png"),
                selectedColor: Colors.white

                // selectedColor: Colors.yellow,
                ),
            MoltenTab(
                icon: Image.asset("assets/navbar/shop.png"),
                selectedColor: Colors.red,
                unselectedColor: Colors.blue

                // selectedColor: Colors.yellow,
                ),
            MoltenTab(
                icon: Image.asset("assets/navbar/share.png"),
                selectedColor: Colors.white
                // selectedColor: Colors.yellow,
                ),
            MoltenTab(
                icon: Image.asset("assets/navbar/tran.png"),
                selectedColor: Colors.white
                // selectedColor: Colors.yellow,
                ),
          ],
        ),
      ),
    );
  }
}
