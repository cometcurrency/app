import 'package:cometdev/categories.dart';
import 'package:cometdev/categories/fashion.dart';
import 'package:cometdev/categories/fashionrev.dart';
import 'package:cometdev/categories/food.dart';
import 'package:cometdev/categories/foodrev.dart';
import 'package:cometdev/categories/haircare.dart';
import 'package:cometdev/categories/haircarerev.dart';
import 'package:cometdev/categories/skincare.dart';
import 'package:cometdev/clippednav.dart';
import 'package:cometdev/homeone.dart';
import 'package:cometdev/intro/form.dart';
import 'package:cometdev/intro/formrev.dart';
import 'package:cometdev/intro/formx.dart';
import 'package:cometdev/intro/phonerev.dart';
import 'package:cometdev/intro/verifyrev.dart';
import 'package:cometdev/mainwithnav.dart';
import 'package:cometdev/nearby/location.dart';
// import 'package:cometdev/newmain.dart';
import 'package:cometdev/profile/personal.dart';
import 'package:cometdev/profile/personal1.dart';
import 'package:cometdev/profile/personal2.dart';
import 'package:cometdev/profile/personalrev.dart';
import 'package:cometdev/profile/profile.dart';
import 'package:cometdev/profile/profilerev.dart';
import 'package:cometdev/test.dart';
import 'package:flutter/material.dart';
import 'package:cometdev/intro/phone.dart';
import 'package:cometdev/intro/verify.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:responsive_framework/responsive_framework.dart';

// void main() {
//  WidgetsFlutterBinding.ensureInitialized();
// runApp(MaterialApp(
// theme: ThemeData(
// textTheme: GoogleFonts.nunitoSansTextTheme(
//
// )
// ),
// initialRoute: 'mainclip',
// debugShowCheckedModeBanner: false,
// routes: {
// 'phone': (context) => PhoneScreen(),
// 'verify': (context) => OtpScr(),
// 'mainone': (context)=> MainScreen(),
// 'profile': (context)=> Profile(),
// 'form': (context) => FormScreen(),
// 'formx': (context) => Formx(),
// 'personal': (context) => Personal(),
// 'personal1': (context) => PersonalOne(),
// 'mainclip': (context) => MyHomePage(),
// 'fashion': (context) => Fashion(),
// 'categories': (context) => catpage(),
// 'haircare': (context) => Haircare(),
// 'skincare': (context) => Skincare(),
// 'food': (context) => Food(),
//
// },
// ));
// }
//

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.nunitoSansTextTheme()),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      initialRoute: "phone",
      debugShowCheckedModeBanner: false,
      routes: {
        'phone': (context) => PhoneScreen(),
        'phonerev': (context) => PhoneRev(),
        // 'test': (context) => Test(),
        'verifyrev': (context) => OtpScrRev('7032880020'),
        // 'mainone': (context)=> MainScreen(),
        'profile': (context) => Profile(),
        'profilerev': (context) => Profilerev(),
        'formrev': (context) => FormRevScreen(),
        'form': (context) => FormScreen(),
        // 'formx': (context) => Formx(),
        'personal2': (context) => Personal2(),
        'personal2rev': (context) => Personal2rev(),
        'personal1': (context) => PersonalOne(),
        'mainclip': (context) => MyHomePage(),
        'fashion': (context) => Fashion(),
        'fashionrev': (context) => Fashionrev(),
        'categories': (context) => catpage(),
        'haircare': (context) => Haircare(),
        'haircarerev': (context) => Haircarerev(),
        'skincare': (context) => Skincare(),
        'skincarerev': (context) => Skincare(),
        'food': (context) => Food(),
        'foodrev': (context) => Foodrev(),
        'location': (context) => LocationPage(),
      },
    );
  }
}
