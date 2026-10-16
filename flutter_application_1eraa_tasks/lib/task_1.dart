void main() {
  print(calculateTotal(60.5, 4));
  print(calculateTotal(100.55, 3));
}

double calculateTotal(double price, int quantity) {
  //return price * quantity; او ممكن اعمل كده
  double result = price * quantity;
  return result;
}
