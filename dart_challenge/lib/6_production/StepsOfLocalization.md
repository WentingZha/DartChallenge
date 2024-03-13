Steps of Localization:
1. Insert the package into pubspec.yaml
flutter_localizations:
    sdk: flutter
2. Set localizationsDelegates in the root class
3. Set multi-languages in iOS project
    a. Open ios/info.plist/
    b. Add Localizations
    	<key>CFBundleLocalizations</key>
    	<array>
    		<string>en</string>
    		<string>zh_CN</string>
    		<string>zh_TW</string>
    	</array>
4. Define a class that need translation, or a file that is multilingual
5. Write intl_translation in pubspec.yaml
6. Terminal command:
dart run intl_translation:extract_to_arb --output-dir=[output dir] [source file]
example:
extract_to_arb --output-dir=lib/6_production/intl lib/6_production/intl/ZwtLocalizationsIntl.dart
7. A translated template ended with '.arb' will be added under the out put directory
8. Copy several localization files, like intl_zh.arb
9. Turn the .arb file into .dart file:
dart run intl_translation:generate_from_arb --generated-file-prefix=<prefix> <my_dart_files> <translated_ARB_files>
Example:
dart run intl_translation:generate_from_arb --generated-file-prefix=intl_ --output-dir=lib/6_production/intl  lib/6_production/intl/ZwtLocalizationsIntl.dart lib/6_production/intl/intl_*.arb


