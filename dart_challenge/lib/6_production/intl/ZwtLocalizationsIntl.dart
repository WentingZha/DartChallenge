import 'package:dart_challenge/6_production/intl/intl_messages_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class ZwtLocalizationsIntl {

  static ZwtLocalizationsIntl? of(BuildContext context) {
    return Localizations.of<ZwtLocalizationsIntl>(
        context,
        ZwtLocalizationsIntl
    );
  }

  static Future<ZwtLocalizationsIntl> load(Locale locale){
    final String code = locale.countryCode!.isEmpty ? locale.languageCode : locale.toString();
    final String localeCode =  Intl.canonicalizedLocale(code);
    return initializeMessages(localeCode).then((value){
      Intl.defaultLocale = localeCode;
      return ZwtLocalizationsIntl();
    });
  }


  String get name => Intl.message(
    'WentingZha',
    name: 'name',
    desc: 'localizations',
  );

  // String greet(String name) => Intl.message(
  //   'This is $name',
  //   name: 'Introduction',
  //   desc: 'Introduce myself',
  //   args: [name]
  // );
  greet(name) => Intl.message(
      'I am $name!',
      name: 'greet',
      args: [name],
      desc: 'Greet the user as they first open the application'
  );
}

class ZwtLocalizationsIntlDelegate extends LocalizationsDelegate<ZwtLocalizationsIntl>{
  @override

  //Whether the localization resources support for the local language
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  Future<ZwtLocalizationsIntl> load(Locale locale) {
    return ZwtLocalizationsIntl.load(locale);
  }

  //Whether the local resource is reloaded when the widgets are rebuilt
  @override
  bool shouldReload(covariant LocalizationsDelegate<ZwtLocalizationsIntl> old) {
    return false;
  }

}