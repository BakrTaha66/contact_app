class UsersModel {
  List<Data>? data;

  UsersModel.fromJson(Map<String, dynamic> json) {
    data = [];

    json['data'].forEach((element) {
      data!.add(Data.fromJson(element));
    });
  }
}

class Data {
  int? id;
  String? firstName;
  String? lastName;
  String? avatar;
  String? email;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
    email = json['avatar'];
  }
}
