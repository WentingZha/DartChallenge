import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ZwtLocalizations{
  final Locale locale;
  ZwtLocalizations(this.locale);

  static ZwtLocalizations? of(BuildContext context) {
    return Localizations.of<ZwtLocalizations>(
      context,
      ZwtLocalizations
    );
  }

  static Map<String,Map<String,String>> localized = {
    'en':{
      'name':'WentingZha'
    },
    'zh':{
      'name':'查雯婷',
    }
  };

  String? get name{
    return localized[locale.languageCode]?['name'];
  }
}

class ZwtLocalizationsDelegate extends LocalizationsDelegate<ZwtLocalizations>{
  @override

  //Whether the localization resources support for the local language
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  Future<ZwtLocalizations> load(Locale locale) {
    return SynchronousFuture<ZwtLocalizations>(
      ZwtLocalizations(locale)
    );
  }

  //Whether the local resource is reloaded when the widgets are rebuilt
  @override
  bool shouldReload(covariant LocalizationsDelegate<ZwtLocalizations> old) {
    return false;
  }

}