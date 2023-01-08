class ProductModel {
  ProductModel({
    this.id,
    required this.name,
    required this.strapColor,
    required this.highlight,
    required this.image,
    required this.price,
    required this.status,
  });
  String? id;
  late final String name;
  late final String strapColor;
  late final String highlight;
  late final String image;
  late final num price;
  late final bool status;

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'];
    strapColor = json['strapColor'];
    highlight = json['highlight'];
    image = json['image'];
    price = json['price'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (id != null) {
      data['id'] = id;
    }
    data['name'] = name;
    data['strapColor'] = strapColor;
    data['highlight'] = highlight;
    data['image'] = image;
    data['price'] = price;
    data['status'] = status;
    return data;
  }
}
