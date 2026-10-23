void main() {
  double mark1 = 60.0;
  double mark2 = 70.0;
  double mark3 = 80.0;
  double equaltotal = calculateTotal(mark1, mark2, mark3);
  print(" Total : $equaltotal");
  double equalaverage = calculateAverage(equaltotal);
  print(" Averafe : $equalaverage");
  String finalResult = getResult(equalaverage);
  print("Result : $finalResult");
}

double calculateTotal(double a, double b, double c) {
  //return price * quantity; او ممكن اعمل كده
  double total = a + b + c;
  return total;
}

double calculateAverage(double total) {
  double average = total / 3;
  return average;
}

String getResult(double average) {
  if (average >= 50) {
    return "Pass";
  } else {
    return "Fail";
  }
}
