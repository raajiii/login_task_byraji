import 'package:dio/dio.dart';
import 'package:task/end_points.dart';
import 'package:task/model/login_model.dart';
import 'package:task/model/profile_model.dart';
import 'package:task/storage.dart';

class Service {
  Dio dio = Dio()
    ..options.baseUrl = "https://test.schoolec.in/api/staff/v2/"
    ..options.connectTimeout = 5000
    ..options.receiveTimeout = 5000
    ..options.headers = {"content-type": "application/json"};

  Future<LoginModel> login(Map<String, dynamic> data) async {
    final res = await dio.post(APIS.login, data: data);
    if (res.statusCode == 200) {
      return LoginModel.fromJson(res.data);
    } else {
      return LoginModel(status: "Failed", code: 400);
    }
  }

  Future<ProfileModel> profile() async {
    final res = await dio.get(APIS.profile,
        options: Options(headers: {
          'Authorization': 'Bearer ${LocalStorage.getValue('token')}',
        }));

    if (res.statusCode == 200) {
      return ProfileModel.fromJson(res.data);
    } else {
      return ProfileModel(status: "Failed", code: 400);
    }
  }
}
