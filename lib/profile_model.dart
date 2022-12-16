class ProfileModel {
  List<Data>? data;

  ProfileModel.fromJson(Map<String, dynamic> json) {
    data = [];

    json['data'].forEach((element) {
      data!.add(Data.fromJson(element));
    });
  }
}

class Data {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }
}
