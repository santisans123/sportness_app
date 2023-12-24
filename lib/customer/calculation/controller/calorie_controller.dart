import 'package:get/get.dart';

class CalorieController extends GetxController {

  final bmiSum = 0.0.obs;
  final bmiNumCategory = " ".obs;
  final uidUser = "".obs;

  void bmiCalculate(double bb, double tb){ 
    double sum;
    sum = bb / ((tb/100) * (tb/100));
    bmiSum(sum);
  }

  void bmiCategory(){
    String category = " ";
    if(bmiSum < 17){
      category = "Sangat Kurus";
    }else if(bmiSum >= 17 && bmiSum <= 18.4){
      category = "Kurus";
    } else if(bmiSum >= 18.5 && bmiSum <= 25){
      category = "Normal" ;
    }else if(bmiSum >= 25.1 && bmiSum <= 27){
      category = "Gemuk";
    }else if(bmiSum > 27){
      category = "Obesitas";
    }
    bmiNumCategory(category);
  }
}
