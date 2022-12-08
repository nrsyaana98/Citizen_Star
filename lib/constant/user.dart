class User
{
  int id;
  String username;
  String firstname;
  String lastname;
  String ic;
  String phone;
  String email;
  String password;

  User(
    this.id,
    this.username,
    this.firstname,
    this.lastname,
    this.ic,
    this.phone,
    this.email,
    this.password,
  );

    factory User.fromJson(Map<String, dynamic> json) => User(
    int.parse(json["id"]), 
    json["username"], 
    json["firstname"], 
    json["lastname"], 
    json["ic"], 
    json["phone"], 
    json["email"], 
    json["password"]);

  Map<String, dynamic> toJson() => 

  {
    'id': id.toString(),
    'username':username,
    'firstname':firstname,
    'lastname':lastname,
    'ic': ic,
    'phone': phone,
    'email': email,
    'password':password,
  };


}