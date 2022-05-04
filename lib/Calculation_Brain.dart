import 'dart:math';

class Calculation_Brain {
  final int weight;
  final int height;
  double _bmi = 0;

  Calculation_Brain({required this.weight, required this.height});

 String CalculationBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String  getResoult(){
   if(_bmi>=25){
return "OverWeight";
   }else if(_bmi>18.5){
     return "Normal";
   }else{
     return "OnderWeight";
   }
  }
  String getDescription(){
    if(_bmi>=25){
      return "You need to exercise and lose weight";
    }else if(_bmi>18.5){
      return "Your weight is right to maintain it";
    }else{
      return "You are underweight, you need to increase your nutrition";
    }
  }

}
