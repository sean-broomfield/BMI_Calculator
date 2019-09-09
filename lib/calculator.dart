import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  double _bmi;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    print (_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    print(_bmi);
    if(_bmi >= 25) {
      return 'Overweight';
    }
    else if (_bmi > 18.5) {
      return 'Normal';
    }
    else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25)
      return 'Exercise more frequently.';
    else if (_bmi >= 18.5)
      return 'BMI is normal, gg!';
    else
      return 'BMI is too low!';
  }

}