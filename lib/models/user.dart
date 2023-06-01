class User {
  int? id;
  String? name;
  String? gambar;
  String? email;
  String? token;

  User({
    this.id,
    this.name,
    this.gambar,
    this.email,
    this.token,
  });

  //function to convert json data to user model

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['user']['id'],
        name: json['user']['name'],
        gambar: json['user']['gambar'],
        email: json['user']['email'],
        token: json['user']['token']);
  }
}
