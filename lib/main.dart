import 'package:flutter/material.dart';
import 'package:my_samples_app/animation/animations.dart';
import 'package:my_samples_app/localizations/app_localizations_deletage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_samples_app/localizations/fallback_localizations_delegate.dart';
import 'package:my_samples_app/localizations/localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        const FallbackCupertinoLocalisationsDelegate(),
      ],
      supportedLocales: [
        const Locale('nl', 'NL'),
      ],
      localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        if (locale == null) {
          return Locale('nl', 'NL');
        } else {
          for (Locale supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode ||
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }

          return supportedLocales.first;
        }
      },
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: <Widget>[
          RaisedButton(onPressed: () => navigateToAnimations(context), child: Text("Animations")),
          RaisedButton(onPressed: () => navigateToLocalizations(context), child: Text("Localization")),
        ]),
      ),
    );
  }

  navigateToAnimations(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AnimationsPage()));
  }

  navigateToLocalizations(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LocalizationsPage()));
  }
}
