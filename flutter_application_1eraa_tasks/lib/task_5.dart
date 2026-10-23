class User {
  String _username;
  String _email;
  User(this._username, this._email);
  String get username => _username;
  String get email => _email;
  double calculateDiscount(double orderAmount) {
    return 0.0;
  }
}

class RegularUser extends User {
  RegularUser(String username, String email) : super(username, email);
}

class VipUser extends User {
  double _vipDiscountPercentage;
  VipUser(String username, String email, this._vipDiscountPercentage)
    : super(username, email);
  get vipDiscountPercentage => _vipDiscountPercentage;
  @override
  double calculateDiscount(double orederAmount) {
    return orederAmount * _vipDiscountPercentage;
  }
}
