import 'package:flutter/material.dart';

class GesturesTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gestures"),
      ),

      /// We use [Builder] here to use a [context] that is a descendant of [Scaffold]
      /// or else [Scaffold.of] will return null
      body: Builder(
        builder: (context) => buildScreen(context),
      ),
    );;
  }

  Widget buildScreen(BuildContext context) {
    return GestureDetector(
      onTap: () => showToast(context),
      child: Center(
        child: Container(
          width: 200, height: 200, color: Colors.green,
          child: Center(child: Text("Click Me")),
        ),
      ),
    );
  }

  showToast(BuildContext context) {
    Scaffold.of(context).showSnackBar(new SnackBar(duration: Duration(milliseconds: 350),
      content: new Text("I am tapped"),
    ));
  }

}