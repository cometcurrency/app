// import 'dart:math';

// import 'package:cometdev/categories.dart';
// import 'package:cometdev/controller/detailscontroller.dart';
// import 'package:cometdev/home.dart';
// import 'package:cometdev/homeone.dart';
// import 'package:cometdev/profile/profile.dart';
// import 'package:cometdev/shopscreen.dart';
// // import 'package:cometdev/shopscreen1.dart';
// import 'package:cometdev/tranpage.dart';
// import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:theme_button/theme_button.dart';
// import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
// import 'package:rolling_switch/rolling_switch.dart';
// import 'package:animated_toggle_switch/animated_toggle_switch.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(const MainScreen());
// }

// // class MainApp extends StatelessWidget {
// //
// //
// // const MainApp({super.key});
// //
// //
// // @override
// // Widget build(BuildContext context) {
// // return Homeone();
// // }
// // }

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   @override
//   int _selectedIndex=0;
//   final _pageController=PageController(initialPage: 0);
//   final NotchBottomBarController _controller = NotchBottomBarController(index: 0);
//   String balance="^1000";
//   int maxcount=3;
//   bool positive=true;
//   Detailscontroller contr=new Detailscontroller();
  
//   Widget build(BuildContext context) {
//     final List<Widget> bottomBarPages=[
//       Homeone(
//         controller: _controller,
//       ),
//       catpage(), 
//       Tranpage()
//       // Tranpage()

//     ];
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor:  HexColor("F7F5F2")
//       ),
//       home: Scaffold(
        
//         body:PageView(
//           controller: _pageController,
//           physics: ClampingScrollPhysics(),
//           children: List.generate(bottomBarPages.length, (index) => bottomBarPages[index]),

//         ),
//         extendBody: true,
//         appBar: AppBar(
//           // title: Image.asset("assets/comet.png"),
//           actions: <Widget>[
//             // AnimatedToggleSwitch<bool>.dual(
//                 // current: positive,
//                 // first: false,
//                 // second: true,
//                 // spacing: 20.0,
//                 // animationDuration: const Duration(milliseconds: 200),
//                 // style: ToggleStyle(
//                   // borderColor: Colors.red,
//                   // indicatorColor: HexColor("#e8bcf0"),
//                   // backgroundColor: Colors.amber,
//                 // ),
//                 // customStyleBuilder: (context, local, global) => ToggleStyle(
//                     // backgroundGradient: LinearGradient(
//                   // colors: [Colors.black, Colors.white],
//                   // stops: [
//                     // global.position -
//                         // (1 - 2 * max(0, global.position - 0.5)) * 0.5,
//                     // global.position + max(0, 2 * (global.position - 0.5)) * 0.5,
//                   // ],
//                 // )),
//                 // borderWidth: 6.0,
//                 // height: 30.0,
//                 // loadingIconBuilder: (context, global) =>
//                     // CupertinoActivityIndicator(
//                         // color: Color.lerp(
//                             // HexColor("#e8bcf0"), HexColor("#e8bcf0"), global.position)),
//                 // onChanged: (b) {
//                   // setState(() => positive = b);
//                   // return Future<dynamic>.delayed(Duration(seconds: 2));
//                 // },
//                 // iconBuilder: (value) => value
//                     // ? Icon(Icons.power_outlined,
//                         // color: Colors.green, size: 32.0)
//                     // : Icon(Icons.power_settings_new_rounded,
//                         // color: Colors.red, size: 32.0),
//                 // textBuilder: (value) => Center(
//                     // child: Text(
//                   // value ? 'On' : '$balance',
//                   // style: const TextStyle(
//                       // color: Colors.white,
//                       // fontSize: 10.0,
//                       // fontWeight: FontWeight.w600),
//                 // )),
//               // ),
//               // 


//               SizedBox(width: 10,),
//             Padding(
//               padding: EdgeInsets.only(right: 10.0),
//               child: Material(
//                 elevation: 5,
//                 borderRadius: BorderRadius.circular(15),
              
//                 child: InkWell(
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
//                   },
//                   child: Container(
//                     height: 50,
//                     width: 50,
//                     child: Image.asset(contr.avatar.value),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.rectangle,
//                       color: HexColor("#e8bcf0"),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                   )
//                 ),
//               ),
//             ),
//           ],
//         ),
//         bottomNavigationBar: (bottomBarPages.length<=maxcount) ? 
//         AnimatedNotchBottomBar(
//           color: HexColor("#DB66F0"),
//           notchColor: Colors.white,
//           kBottomRadius: 18.0,
//           kIconSize: 26.0,
//           notchBottomBarController: _controller, 
//           bottomBarHeight: 20,
//           bottomBarItems: [
//             BottomBarItem(
//               inActiveItem: Image.asset("assets/bb/homeoff.png"),
//                activeItem:  Image.asset("assets/bb/homeon.png"),
//                ),
//                BottomBarItem(
//           inActiveItem: Image.asset("assets/bb/shopoff.png"),
//         activeItem:  Image.asset("assets/bb/shopon.png"),
//           ),
//                  BottomBarItem(
//   inActiveItem: Image.asset("assets/bb/transferoff.png"),
// activeItem:  Image.asset("assets/bb/transferoff.png"),
//   ),

  
//           ], 
//           onTap: (index){
//             _pageController.jumpToPage(index);
//           }, 
          
//           ) : null
          
//       ),
      
//     );
//   }}