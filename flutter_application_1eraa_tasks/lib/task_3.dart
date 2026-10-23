class BankAccount {
  String accountHolder;
  double _balance = 0;

  BankAccount({required this.accountHolder});

  double get balance => _balance;

  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("invalid value: لا يمكن أن يكون الرصيد سالباً");
    }
  }

  void deposit(double amount) {
    if (amount >= 0) {
      _balance += amount;
      print("Done ");
    } else {
      print("invalid value");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Done ");
    } else {
      print("invalid value");
    }
  }
}

void main() {
  BankAccount account = BankAccount(accountHolder: "roma");

  account.deposit(100);
  account.withdraw(40);

  print("الرصيد الحالي: ${account.balance}");
}
