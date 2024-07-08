import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/list_controller.dart';
import 'package:my_app/controller/tap_controller.dart';
import 'package:my_app/home.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    //TapController controller = Get.find();
    ListController listController = Get.put(ListController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          //back routing
          onPressed: () {
            Get.to(() => HomePage());
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
            
            Obx(()=> Column(
              children: [
                Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "X + Y = " + Get.find<TapController>().s.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
                Container(
                    margin: EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Y value " + Get.find<TapController>().y.value.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            ),
            GestureDetector(
              onTap: () {
                // controller.decreaseX();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  // child: Text(controller.x.toString(),
                  // style: TextStyle(
                  //   color: Colors.black,
                  //   fontSize: 30,
                  // ),
                  // ),
                  child: Text(
                    "X value " + Get.find<TapController>().x.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().increaseY();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Tap to increase Y value ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().Total();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Tap to get the Total(X + Y)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<ListController>().setValues(Get.find<TapController>().s);
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Tap to save total as list",
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
