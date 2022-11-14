// ignore_for_file: file_names

import 'dart:math';

  class CalculationBrain {
    final int height;
    final int weight;
    double _bmi=0;

    CalculationBrain({required this.height,required this.weight});

          String getBMI(){
        _bmi= weight/pow(height/100, 2);
        return _bmi.toStringAsFixed(1);
    }
    String getResult()
    {
      if(_bmi>=25)
      {
        return "OverWeight";
      }
      else if(_bmi>=18.5  && _bmi<25)
      {
        return "Normal";
      }else  {
        return "UnderWeight";
      }
      
    }

    String getinterpotation(){
       if(_bmi>=25)
      {
        return "You are OverWeight, so kindly start exercise to get normal.";
      }
      else if(_bmi>=18.5 && _bmi<25)
      {
        return "Your body weight is  Normal, Good job";
      }else {
        return "You are UnderWeight, so kindly start exercise to get normal.";
      }
    }
  }