import 'dart:math';
import 'main.dart';

class CalculateBMI {
  CalculateBMI({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String Calculation() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String get_bmi() {
    if (_bmi >= 25) {
      return 'Over Weight';
    } else if (_bmi >= 18 && _bmi < 25) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String get_suggestion() {
    if (_bmi >= 25) {
      return 'You have a higher than Normal body weight. Try to more Exercise';
    } else if (_bmi > 18 && _bmi < 25) {
      return 'You hve a Normal Body Weight. Good Job';
    } else {
      return 'You have a lower than Normal body weight. You need to eat bit more';
    }
  }
}
