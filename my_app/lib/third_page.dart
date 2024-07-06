import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/tap_controller.dart';
import 'package:my_app/home.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {

    TapController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          //back routing
          onPressed: () {
            Get.to(()=>HomePage());
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           GestureDetector(
              onTap: (){
                // controller.decreaseX();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(controller.x.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}