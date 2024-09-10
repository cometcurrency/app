// import 'package:cometdev/controller/detailscontroller.dart';
// import 'package:cometdev/homeone.dart';
// import 'package:cometdev/mainwithnav.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

// class Formx extends StatefulWidget {
//   const Formx({super.key});

//   @override
//   State<Formx> createState() => _FormxState();
// }

// class _FormxState extends State<Formx> {
//   final _formKey = GlobalKey<FormState>();
//   Detailscontroller contr = Get.put(Detailscontroller());
//   TextEditingController text1=new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             Obx(()=>Text(contr.name.value)),
        
//             Form(
//               key: _formKey,
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     child: TextFormField(
//                       controller: text1,
//                       decoration: InputDecoration(
//                         hintText: "John Doe"
//                       ),
//                     ),
                  
                    
//                   ),
//                   ElevatedButton(
//                     child: Text("submit"),
//   onPressed: (){
//     contr.name.value=text1.value.text;
//     print("Value of contr name"+contr.name.value);
//     Navigator.push(
//   context,
//   MaterialPageRoute(builder: (context) => MainScreen()),
// );
//   }
// )
//                 ],
//                 )
//               )
        
//           ],),
//       ),
//     );
//   }
// }