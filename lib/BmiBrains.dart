import 'dart:math';
import 'package:flutter/cupertino.dart';

class BmiBrains {
  BmiBrains({@required this.height, @required this.weight});

  int height;
  int weight;
  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBmiComment() {
    if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18) {
      return 'NORMAL WEIGHT';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getBmiDesc() {
    if (_bmi > 25) {
      return 'Your fat ass need to hit the gym and start dieting !';
    } else if (_bmi > 18) {
      return 'Maintain the weight !';
    } else {
      return 'Those chicken legs need some meat on them !';
    }
  }
}
