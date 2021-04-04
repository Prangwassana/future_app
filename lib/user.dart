class User{
  int id;
  String email;
  String frist_name;
  String last_name;
  String avatar;

  User({this.id, this.email, this.frist_name, this.last_name,this.avatar});

  factory User.fromJson(Map<String, dynamic> json) => User(
      id: json["id"],
      email: json["email"],
      frist_name: json["first_name"],
      last_name: json["last_name"],
      avatar: json["avatar"],

  );



}