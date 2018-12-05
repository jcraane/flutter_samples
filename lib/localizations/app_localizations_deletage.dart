import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_samples_app/localizations/app_localizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['nl'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    var appLocalizations = AppLocalizations(locale);
    await appLocalizations.load();
    return appLocalizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}