class Cart {
  String? id;
  String? name;
  int? price;
  int? quantity;

  void add(String id, String name, int price, int quantity) {
    this.id = id;
    this.name = name;
    this.price = price;
    this.quantity = quantity;
  }
}
