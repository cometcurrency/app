// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:switch_button/switch_button.dart';
// import 'package:theme_button/theme_button.dart';
// import 'package:dot_curved_bottom_nav/dot_curved_bottom_nav.dart';


// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   bool light = true;
//   String name = 'Vedanth';
//   ThemeData theme = ThemeData.light();

//   int _currentPage = 0;
//   final ScrollController _scrollController = ScrollController();


//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         bottomNavigationBar: DotCurvedBottomNav(
          
//           scrollController: _scrollController,

//         hideOnScroll: true,
//         indicatorColor: Colors.blue,
//         backgroundColor: Colors.black,
//         animationDuration: const Duration(milliseconds: 300),
//         animationCurve: Curves.ease,
//         // margin: const EdgeInsets.all(0),
//         selectedIndex: _currentPage,
//         indicatorSize: 5,
//         borderRadius: 25,
//         height: 40,
//         onTap: (index) {
//           setState(() => _currentPage = index);
//         },
//         items: [
//           Icon(
//             Icons.home,
//             color: _currentPage == 0 ? Colors.blue : Colors.white,
//           ),
//           Icon(
//             Icons.notification_add,
//             color: _currentPage == 1 ? Colors.blue : Colors.white,
//           ),
//           Icon(
//             Icons.color_lens,
//             color: _currentPage == 2 ? Colors.blue : Colors.white,
//           ),
//           Icon(
//             Icons.person,
//             color: _currentPage == 3 ? Colors.blue : Colors.white,
//           ),
//         ],
//       ),
//         appBar: AppBar(
          
//           backgroundColor: Colors.purple,
//           title: Image.asset("assets/comet.png"),
//           actions: <Widget> [
//             Icon(Icons.person_2_sharp,size: 50,),
//           ],
//         ),
//         body: Container(
//           color: Colors.,
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 //hi, user !
//                 Row(
//                   children: <Widget>[
//                     Image.asset("assets/hs/avatarround.png"),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Text(
//                       "Hi, $name!",
//                       style: TextStyle(fontSize: 29),
//                     ),
//                   ],
//                 ),
                    
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.red),
//                     borderRadius:BorderRadius.all(Radius.circular(20)),
//                   ),
//                   child: Column(
//                     children: <Widget>[
//                       Image.asset("assets/hs/nfc.png"),
//                       SizedBox(width: 30,),
//                       SizedBox(
//                         height: 30,
//                         child: Image.asset("assets/hs/chip.png")),

//                         Container(
//                           child: Text('$name'),
//                         )
                        
      

//                     ],
//                   ),
                  
//                 )
//                 //card space
                    
                    
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
