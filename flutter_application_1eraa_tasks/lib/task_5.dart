List<int> calculateCartTotal({
  required List<int> prices,
  double discountPercent = 0,
  double taxPercent = 14,
  double deliveryFee = 0,
  double maxDiscount = 100,
  bool isMember = false,
}) {
  double subtotal = prices.fold(
    0,
    (previousValue, prices) => previousValue + prices,
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
}

void main() {
  // مثال 1
  print(calculateCartTotal(prices: [100, 200, 50]));

  // مثال 2
  print(
    calculateCartTotal(
      prices: [100, 200, 50],
      discountPercent: 10,
      taxPercent: 14,
      deliveryFee: 25,
    ),
  );

  // مثال 3 (خصم 10% + عضورية 5% = 15%، لكن الحد الأقصى maxDiscount هو 12%)
  print(
    calculateCartTotal(
      prices: [100, 200, 50],
      discountPercent: 10,
      isMember: true,
      maxDiscount: 12,
    ),
  );
}
