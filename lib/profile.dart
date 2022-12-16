import 'package:contact_app/profile_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Dio dio = Dio();
  String url = "https://reqres.in/api/users";

  ProfileModel? profileModel;

  Future<ProfileModel> getData() async {
    Response response = await dio.get(url);
    profileModel = ProfileModel.fromJson(response.data);
    return profileModel!;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: FutureBuilder<ProfileModel>(
          future: getData(),
          builder: (context, snapshot) {
            return snapshot.hasData
                ? Builder(
              builder: ,
            )

          },
        ));
  }
}
