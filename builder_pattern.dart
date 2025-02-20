class User {
  // User class with firstName and lastName are required and other data are optional.
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;

  User({required this.firstName, required this.lastName, this.age, this.phone});
}

class UserBuilder {
  //Class to create an user with the data needed only (Builder Pattern)
  late final String firstName;
  late final String lastName;
  String? _userPhone;
  int? _userAge;

  UserBuilder({required this.firstName, required this.lastName});

  UserBuilder setAge({required int age}) {
    //Method to set user age.
    _userAge = age;
    return this;
  }

  setPhone({required String phone}) {
    // method to set user phone.
    _userPhone = phone;
    return this;
  }

  User buildUser() {
    //Method to create the user and return it.
    return User(
        firstName: firstName,
        lastName: lastName,
        age: _userAge,
        phone: _userPhone);
  }
}

void main() {
  User user1 = UserBuilder(firstName: "Karim", lastName: "Adel")
      .setAge(age: 28)
      .buildUser();
  print(user1.firstName);
  print(user1.phone);
}
