import 'package:dart_challenge/6_production/map/ZwtLocalizations.dart';
import 'package:dart_challenge/6_production/intl/ZwtLocalizationsIntl.dart';
import 'package:flutter/material.dart';

class LocaleChapter extends StatelessWidget {

  const LocaleChapter({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    return Scaffold(
      appBar: AppBar(title: Text('Locale')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(locale.toString()),
            Text(
                // Localizations.of(context, ZwtLocalizations).name,
              // ZwtLocalizations.of(context)!.name!,

                ZwtLocalizationsIntl.of(context)!.greet(ZwtLocalizationsIntl.of(context)!.name),
                style: Theme.of(context).textTheme.titleLarge)
          ],
        ),
      ),
    );
  }
}


