import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    @required this.id,
    @required this.name,
    @required this.phone,
  });
}

class UserScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: 1,
      name: "Ahmed",
      phone: "983241892658",
    ),
    UserModel(
      id: 2,
      name: "Ali",
      phone: "35675464568",
    ),
    UserModel(
      id: 3,
      name: "Mohamed",
      phone: "3457r3",
    ),
    UserModel(
      id: 4,
      name: "Hanan",
      phone: "23454623457",
    ),
    UserModel(
      id: 5,
      name: "hola",
      phone: "678958456",
    ),
    UserModel(
      id: 6,
      name: "alaa",
      phone: "234",
    ),
    UserModel(
      id: 7,
      name: "sara",
      phone: "23463457347",
    ),
    UserModel(
      id: 8,
      name: "moans",
      phone: "456745867345",
    ),
    UserModel(
      id: 9,
      name: "saad",
      phone: "2435734674565",
    ),
    UserModel(
      id: 10,
      name: "adel",
      phone: "678956784563",
    ),
    UserModel(
      id: 11,
      name: "mahmod",
      phone: "346325623457",
    ),
    UserModel(
      id: 12,
      name: "talb",
      phone: "14643616245",
    ),
    UserModel(
      id: 13,
      name: "makhtar",
      phone: "34575367346",
    ),
    UserModel(
      id: 14,
      name: "hany",
      phone: "3456865784768",
    ),
    UserModel(
      id: 15,
      name: "yuuns",
      phone: "2354612457568",
    ),
    UserModel(
      id: 16,
      name: "ziad",
      phone: "78956747",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.separated(
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) =>
            buildUserItem(users[index]),
      ),
    );
  }

  Widget buildUserItem(UserModel userModel) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            child: Text(
              userModel.id.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userModel.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                userModel.phone,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
