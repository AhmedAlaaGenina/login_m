import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  const Messenger({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                "https://static.remove.bg/remove-bg-web/2a274ebbb5879d870a69caae33d94388a88e0e35/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg",
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Chat",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Search"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  itemCount: 20,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem(),
                itemCount: 20,
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                "https://static.remove.bg/remove-bg-web/2a274ebbb5879d870a69caae33d94388a88e0e35/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg",
              ),
            ),
            CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Jolui",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget buildChatItem() {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                "https://static.remove.bg/remove-bg-web/2a274ebbb5879d870a69caae33d94388a88e0e35/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg",
              ),
            ),
            CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jolui",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Text(
                    "Hello, My Frind How Are you?!",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      radius: 3,
                    ),
                  ),
                  Text(
                    "12:47 AM",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
