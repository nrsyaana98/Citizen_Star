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