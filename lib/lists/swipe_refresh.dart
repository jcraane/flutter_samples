import 'dart:math';

import 'package:flutter/material.dart';

const userNames = ["Jan", "Klaas", "Kees", "Piet", "Theo"];
var random = Random();
final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = new GlobalKey<RefreshIndicatorState>();

class SwipeRefreshPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SwipeRefreshState();
  }
}

class SwipeRefreshState extends State<SwipeRefreshPage> {
  var users = List<String>();

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lists"),
      ),
      body: buildScreen(),
    );
  }

  Widget buildScreen() {
    return RefreshIndicator(
      key: _refreshIndicatorKey,
      onRefresh: () => fetchUsers(),
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(users[index]),
          );
        },
      ),
    );
  }

  Future<String> fetchUsers() {
    var result = List<String>();
    for (int i = 0; i < 100; i++) {
      result.add(userNames[random.nextInt(userNames.length - 1)]);
    }

    setState(() {
      this.users = result;
    });

    return Future.value("");
  }
}
