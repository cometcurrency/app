
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detailscontroller extends GetxController{

  final textController = TextEditingController();
  
  RxString avatar="assets/hs/avatar.png".obs;
  RxString name="nithish".obs;
  RxString dob="23-12-200".obs;
  RxString email="nithishkumar23123456@gmail.com".obs;
  RxString pan="BVYNP9734L".obs;
  RxString gender="Male".obs;
  RxString phone="7032880020".obs;
  RxString instagram="".obs;
  RxString ad="Tarnaka".obs;
  

  void updateName(String input)
  {
    name=input.obs;
  }
   @override
  void onInit() {
    super.onInit();
    textController.addListener(() {
      name.value = textController.text;
    });
  }
 

}