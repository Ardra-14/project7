import 'package:get/get.dart';

class TapController extends GetxController{

  int _x = 0;

  int get x => _x;

  void increment(){
    _x++;
    update();
    
  }

  
  void decreaseX(){
    _x--;
    update();
   
  }

  RxInt _y = 0.obs;
  RxInt get y => _y;

  void increaseY(){
    -y.value++;
  }
  void decreaseY(){
    _y.value--;
  }

  RxInt _s = 0.obs;
 int get s => _s.value;

  void Total(){
    _s.value = x + _y.value;
    print(_s);
  }
}