import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controller/tap_controller.dart';
import 'package:my_app/first_page.dart';
import 'package:my_app/second_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    //initialization of TapController class -dependency injection

    TapController controller = Get.put(TapController());

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           GetBuilder<TapController>(builder: (_){
              return  Container(
                margin: EdgeInsets.only(left: 100, right : 100, top: 20,bottom: 20),
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
              );
           },),
            GestureDetector(
              onTap: (){
                controller.increment();
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
                  child: Text("Tap Here..",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  ),
                ),
              ),
            ),

            //Get.to Routing

            GestureDetector(
              onTap: (){
                Get.to(()=>FirstPage());
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
                  child: Text("Go to first page",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  ),
                ),
              ),
            ),
            
            GestureDetector(
              onTap: (){
                Get.to(()=>SecondPage());
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
                  child: Text("Go to second page",
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