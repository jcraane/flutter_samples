import 'package:flutter/material.dart';
import 'package:my_samples_app/animation/animations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sampels"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
          RaisedButton(
            onPressed: () => navigate(context),
              child: Text("Animations")),
        ]),
      ),
    );
  }

  navigate(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AnimationsPage()));
  }
}
