class Product {
  final String _id;
  final String _imgName;
  final String _name;
  int _price;
  int _quantity;

  Product({
    required String id,
    required String imgName,
    required String name,
    int price = 0,
    int quantity = 0,
  })  : _id = id,
        _imgName = imgName,
        _name = name,
        _price = price,
        _quantity = quantity;

  String get id => _id;
  String get imgName => _imgName;
  String get name => _name;
  int get price => _price;
  int get quantity => _quantity;

  void increase() {
    _quantity++;
  }

  void decrease() {
    if (_quantity <= 0) {
      return;
    }

    _quantity--;
  }
}
