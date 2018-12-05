
import 'package:flutter/material.dart';
import 'package:my_samples_app/localizations/app_localizations.dart';

/// Sample screen to demonstrate localization using json files. See: https://medium.com/@anilcan/flutter-internationalization-by-using-json-files-f91468d86df0
class LocalizationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context).get("loc_appbar_title")),
        ),
      body: Center(child: Text(AppLocalizations.of(context).get("sample_message"))),
    );
  }
}