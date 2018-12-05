import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) => Localizations.of(context, AppLocalizations);

  Map<String, String> _sentences;

  Future<bool> load() async {
    String data = "";
    try {
      data = await await rootBundle.loadString('assets/lang/${this.locale.languageCode}.json');
    } catch (e) {
      data = await rootBundle.loadString('assets/lang/nl.json');
    }

    Map<String, dynamic> _result = json.decode(data);

    this._sentences = new Map();
    _result.forEach((String key, dynamic value) {
      this._sentences[key] = value.toString();
    });

    return true;
  }

  String get(String key) {
    return this._sentences[key];
  }
}
