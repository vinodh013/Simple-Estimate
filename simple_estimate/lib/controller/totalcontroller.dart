import 'package:get/get.dart';

//create controller
class Mycontroller extends GetxController {
 
 final quantity = 0.obs;
  final price = 0.0.obs;
  final total = 0.0.obs;

  void calculateTotal() {
    total.value = quantity.value * price.value;
  }
  
}
