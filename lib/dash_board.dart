import 'package:flutter/material.dart';
import 'package:task/model/login_model.dart';
import 'package:task/service.dart';

import 'model/profile_model.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  Future<ProfileModel> futureData() async {
    return await Service().profile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dash Board"),
      ),
      body: FutureBuilder(
        future: futureData(),
        builder: (BuildContext context, AsyncSnapshot<ProfileModel> snapshot) {
          print("sanp data is ${snapshot.data}");
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(
              children: [
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 100,
                  backgroundImage:
                      NetworkImage(snapshot.data?.data?.photo ?? ""),
                ),
                cardItem("Code", snapshot.data?.data?.code),
                cardItem("User Name", snapshot.data?.data?.userName),
                cardItem("DOB", snapshot.data?.data?.dob),
                cardItem("DOJ", snapshot.data?.data?.doj),
                cardItem("Martial Status", snapshot.data?.data?.maritalStatus),
                cardItem("Nationality", snapshot.data?.data?.nationality),
                cardItem("MotherTongue", snapshot.data?.data?.motherTongue),
                cardItem("Address",
                    "${snapshot.data?.data?.permanentAddress?.address},${snapshot.data?.data?.permanentAddress?.state}, ${snapshot.data?.data?.permanentAddress?.country}"),
              ],
            );
          } else {
            const Center(
              child: Text("Something went Wrong"),
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget cardItem(String key, dynamic value) {
    return Card(
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.only(
            top: 15,
          ),
          width: double.maxFinite,
          height: 40,
          child: Text("$key      :  $value")),
    );
  }
}
