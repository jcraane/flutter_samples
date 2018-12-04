import 'package:flutter/material.dart';

class AnimationsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimationsState();
  }

}

class AnimationsState extends State<AnimationsPage> {
  var size = 100;
  var color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animations"),
        ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () => toggle(),
              child: Text("Toggle"),),
            AnimatedContainer(
                width: size.toDouble(),
                height: size.toDouble(),
                color: color,
                curve: Curves.easeIn,
                duration: Duration(milliseconds: 275)),
          ],
        ),
      ),
    );
  }

  toggle() {
    if (size == 100) {
      setState(() {
        size = 300;
        color = Colors.red;
      });
    } else {
      setState(() {
        size = 100;
        color = Colors.green;
      });
    }
  }

}