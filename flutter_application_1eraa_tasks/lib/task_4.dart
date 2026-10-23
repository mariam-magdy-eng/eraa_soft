class Product {
  String name;
  int id;
  double _price = 0;
  int _quantity = 0;

  Product({
    required this.name,
    required this.id,
    required double price,
    required int quantity,
  });
  double get price => _price;
  int get quantity => _quantity;
  set price(double value) {
    if (value >= 0) {
      _price = value;
    } else {
      print("Price cannot be negative. Set to 0.0");
    }
  }

  set quantity(int value) {
    if (value >= 0) {
      _quantity = value;
    } else {
      print("Quantity cannot be negative. Set to 0");
    }
  }

  void updateStock(int amount) {
    if (_quantity + amount >= 0) {
      _quantity += amount;
    }
  }

  double calculateTotalValue() {
    return _price * _quantity;
  }
}

findProduct(List<Product> products, int id) {
  for (var product in products) {
    if (product.id == id) {
      return product;
    }
  }
  return null;
}

double calculateAllProductsValue(List<Product> products) {
  double total = 0;
  for (var product in products) {
    total += product.calculateTotalValue();
  }
  return total;
}

void main() {
  Product p1 = Product(name: "pen", id: 2, price: 14.0, quantity: 3);

  print('المنتج: ${p1.name}');
  print('السعر: ${p1.price}');
  print('الكمية: ${p1.quantity}');
  p1.price = -5;
  p1.quantity = -2;

  p1.updateStock(3);
  print('الكمية بعد التحديث: ${p1.quantity}');
}
