double calculateOrder({
  required double price,
  required int quantity,
  double discount = 0,
  double deliveryFee = 0,
}) {
  return (price * quantity) - discount + deliveryFee;
}

void main() {
  print(calculateOrder(price: 400, quantity: 2));
  print(
    calculateOrder(price: 400, quantity: 2, discount: 10.0, deliveryFee: 50.0),
  );
}
