import 'dart:convert';

String accountToJson(Account data) => json.encode(data.toJson());

class Account {
  Account({
    this.phoneNumber = '',
    this.name = '',
    this.sex = '',
    this.birthDate = '',
    this.weight = 0,
    this.height = 0,
  });

  String phoneNumber;
  String name;
  String sex;
  String birthDate;
  int weight;
  int height;

  Map<String, dynamic> toJson() => {
        "phone": phoneNumber,
        "name": name,
        "sex": sex,
        "birthdate": birthDate,
        "weight": weight,
        "height": height,
      };
}
