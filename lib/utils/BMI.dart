import 'dart:math';

class BMI {
  final double height;
  final double weight;
  double _bmi;
  BMI({this.height, this.weight});
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String evaluateResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Fit";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight, time to hit the gym lil whale";
    } else if (_bmi > 18.5) {
      return "You seem to have a well balanced physique but don't let that get over your head!";
    } else {
      return "Try incorporating protein rich foods in your diet, or you will get smoked by others your age";
    }
  }
}
