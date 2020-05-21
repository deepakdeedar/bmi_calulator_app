import 'dart:math';
import 'package:flutter/material.dart';

class ResultBrain{

  ResultBrain({this.weight,this.height});
  final int height;
  final int weight;
  double result;

  String getResult(){
    result = weight / pow(height/100, 2);
    return result.toStringAsFixed(1);
  }

  String getStatus(){
    if(result < 18.5){
      return 'UnderWeight';
    }else if(result >= 18.5 && result < 25){
      return 'Normal';
    }else{
      return 'Overweight';
    }
  }

  Color getColor(){
    if(result < 18.5){
      return Colors.yellow;
    }else if(result >= 18.5 && result < 25){
      return Colors.green;
    }else{
      return Colors.red;
    }
  }

  String getInstruction(){
    if(result < 18.5){
      return 'A BMI of less than 18.5 indicates that you are underweight, so you may need to put on some weight. You are recommended to ask your doctor or a dietitian for advice.';
    }else if(result >= 18.5 && result < 25){
      return 'A BMI of 18.5–24.9 indicates that you are at a healthy weight for your height. By maintaining a healthy weight, you lower your risk of developing serious health problems.';
    }else{
      return 'A BMI over 25 indicates that you are slightly overweight. You may be advised to lose some weight for health reasons. You are recommended to talk to your doctor or a dietitian for advice.';
    }
  }

}