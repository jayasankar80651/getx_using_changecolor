import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpackage_changecolor/getx.dart';

class ColorChangeUsingGetx extends StatefulWidget {
  ColorChangeUsingGetx({super.key});

  @override
  State<ColorChangeUsingGetx> createState() => _ColorChangeUsingGetxState();
}

class _ColorChangeUsingGetxState extends State<ColorChangeUsingGetx> {
  @override
  Widget build(BuildContext context) {
    final ChangeColorGEtx colorController = Get.put(ChangeColorGEtx());
    return Obx(
      () => Scaffold(
        backgroundColor: colorController.backgroundcolor.value,
        appBar: AppBar(title: Text("Color Change scaffold & text color")),
        body: GestureDetector(
          onTap: () {
            colorController.ChangeColor();
          },
          child: Obx(
            () => Center(
              child: Text(
                "Tap To Change Color",
                style: TextStyle(
                  color: colorController.textColor.value,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
