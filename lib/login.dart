import 'package:flutter/material.dart';
import 'package:task/dash_board.dart';
import 'package:task/model/login_model.dart';
import 'package:task/service.dart';
import 'package:task/storage.dart';

class Login extends StatelessWidget {
  String userName = '';
  String pswd = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Login",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              onChanged: (val) {
                if (val != '') {
                  userName = val;
                }
              },
              decoration: const InputDecoration(
                  label: Text("User Name"), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (val) {
                if (val != '') {
                  pswd = val;
                }
              },
              decoration: const InputDecoration(
                  label: Text("Password "), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                final LoginModel res =
                    await Service().login({'code': userName, 'password': pswd});
                if (res.code != 200) {
                  ScaffoldMessengerState().showSnackBar(const SnackBar(
                      content:
                          Text("Try After sometime,Something went wrong")));
                } else {
                  LocalStorage.setValue('login', true);
                  LocalStorage.setValue('token', res.data?.token);

                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => DashBoard()));
                }
              },
              child: const Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}
