double calculateCartTotal(
  List<double> prices, {
  double discountPercent = 0,
  double taxPercent = 14,
  double deliveryFee = 0,
  bool isMember = false,
  double maxDiscount = 100,
}) {
  double subtotal = prices.fold(
    0.0,
    (previousValue, price) => previousValue + price,
  );

  double totalDisc = discountPercent;
  if (isMember) {
    totalDisc += 5;
  }

  if (totalDisc > maxDiscount) {
    totalDisc = maxDiscount;
  }

  double discountAmount = subtotal * (totalDisc / 100);
  double discountedSubtotal = subtotal - discountAmount;

  double taxAmount = discountedSubtotal * (taxPercent / 100);

  double finalTotal = discountedSubtotal + taxAmount + deliveryFee;

  return finalTotal;
}

void main() {
  print(calculateCartTotal([100, 200, 50]));

  print(
    calculateCartTotal(
      [100, 200, 50],
      discountPercent: 10,
      taxPercent: 14,
      deliveryFee: 25,
    ),
  );

  print(
    calculateCartTotal(
      [100, 200, 50],
      discountPercent: 10,
      isMember: true,
      maxDiscount: 12,
    ),
  );
}
