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
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['imageUrl'] = imageUrl;
    return data;
  }
}
