class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.imageUrl,
  });
  late final int id;
  late final String name;
  late final String email;
  late final String imageUrl;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['email'] = email;
    _data['imageUrl'] = imageUrl;
    return _data;
  }
}
