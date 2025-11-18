import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeColorGEtx extends GetxController{
   Rx<Color> backgroundcolor=Colors.grey.obs;
   Rx<Color>textColor=Colors.black.obs;
     List<Color> colorList=[
      Colors.black,
      Colors.blue,
      Colors.pink,
      Colors.yellow,
      Colors.lightGreen,
      Colors.green,
      Colors.brown,
      Colors.purple,
     ];
     void ChangeColor(){
      
      int index=Random().nextInt(colorList.length);
      backgroundcolor.value=colorList[index] ;
      textColor.value=colorList[index+1];
     }
}