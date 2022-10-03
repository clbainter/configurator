// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ConfiguratorGenerator
// **************************************************************************

import 'package:flutter/material.dart';import 'package:configurator_flutter/configurator_flutter.dart';import 'dart:ui';import 'package:slang/builder/model/node.dart';export 'package:slang_flutter/slang_flutter.dart';


// ********************************
// Color Util
// ********************************

class _ColorUtil {static Color _colorFromHex(String input) { String c = input.toUpperCase().replaceAll("#", "");
if ( ! [ 6, 8 ].contains( c.length ) ) {
return Colors.transparent;
}
if ( c.length == 6 ) {
c = 'FF$c';
}
int? iVal = int.tryParse( c, radix: 16 );
if ( iVal != null ) {
return Color( iVal );
}
return Colors.transparent; } 
static Color _colorFromRGBString(String color) { try {
bool hasAlpha = color.toLowerCase().startsWith( 'rgba' );
String numParts = color.replaceAll("rgb(", "").replaceAll("rgba(", "").replaceAll(")", "");
List<String> rgbSplit = numParts.split(",").map((e) => e.trim()).toList();
int r = int.parse( rgbSplit[0] );
int g = int.parse( rgbSplit[1] );
int b = int.parse( rgbSplit[2] );
double a = hasAlpha ? double.parse( rgbSplit[3] ) : 1.0;
return Color.fromRGBO( r, g, b, a );
} catch ( e ) {
print( e );
return Colors.transparent;
} } 
static String colorToString(Color color) { var r = color.red;
var g = color.green;
var b = color.blue;
var o = color.opacity;
return 'rgba($r,$g,$b,$o)'; } 
static Color parseColorValue(dynamic input) { if ( input is Color ) {
return input;
}
if ( input is int ) {
try {
return Color( input );
} catch ( e ) {
print( e );
return Colors.transparent;
}
}
if ( input is String ) {
if ( input.toLowerCase().startsWith( 'rgb' ) ) {
return _colorFromRGBString( input );
}
return _colorFromHex( input );
}
return Colors.transparent; } 
 }



// ********************************
// Keys
// ********************************

class _FlagKeys {final isEnabled = 'isEnabled';

final andThis = 'andThis';

final andThat = 'andThat';

final orThis = 'orThis';

final orThat = 'orThat';

final showTitle = 'showTitle';

 }
class _ImageKeys {final loginHeaderImage = 'loginHeaderImage';

final storeFrontHeaderImage = 'storeFrontHeaderImage';

 }
class _RouteKeys { }
class _SizeKeys {final homeTitleSize = 'homeTitleSize';

final detailTitleSize = 'detailTitleSize';

 }
class _ColorKeys {final primary = 'primary';

final secondary = 'secondary';

final tertiary = 'tertiary';

 }
class MyHomePageConfigKeys {static final routes = _RouteKeys();

static final flags = _FlagKeys();

static final sizes = _SizeKeys();

static final colors = _ColorKeys();

static final images = _ImageKeys();

 }



// ********************************
// Theme
// ********************************

class MyHomePageGeneratedThemeExtension extends ConfigTheme<MyHomePageGeneratedThemeExtension> {MyHomePageGeneratedThemeExtension({required super.themeMap});

Color get primary => _ColorUtil.parseColorValue( themeMap['colors']?['primary'] );
Color get secondary => _ColorUtil.parseColorValue( themeMap['colors']?['secondary'] );
Color get tertiary => _ColorUtil.parseColorValue( themeMap['colors']?['tertiary'] );
double get homeTitleSize => themeMap['sizes']?['homeTitleSize'];
double get detailTitleSize => themeMap['sizes']?['detailTitleSize'];
@override MyHomePageGeneratedThemeExtension copyWith({Map<String, Map<String, dynamic>>? themeMap}) { this.themeMap.addAll( themeMap ?? {} );
return MyHomePageGeneratedThemeExtension( themeMap: this.themeMap ); } 
@override MyHomePageGeneratedThemeExtension lerp(ThemeExtension<MyHomePageGeneratedThemeExtension>? other, double t, ) { if ( other is! MyHomePageGeneratedThemeExtension) {
return this;
}
themeMap['colors']!['primary'] = _ColorUtil.colorToString( Color.lerp( primary, other.primary, t )! );
themeMap['colors']!['secondary'] = _ColorUtil.colorToString( Color.lerp( secondary, other.secondary, t )! );
themeMap['colors']!['tertiary'] = _ColorUtil.colorToString( Color.lerp( tertiary, other.tertiary, t )! );
themeMap['sizes']!['homeTitleSize'] = lerpDouble( homeTitleSize, other.homeTitleSize, t);
themeMap['sizes']!['detailTitleSize'] = lerpDouble( detailTitleSize, other.detailTitleSize, t);
return MyHomePageGeneratedThemeExtension( themeMap: themeMap ); } 
 }



// ********************************
// Flags
// ********************************

class _Flags {const _Flags();

Map<String, bool> get map => {MyHomePageConfigKeys.flags.isEnabled: false, MyHomePageConfigKeys.flags.andThis: true, MyHomePageConfigKeys.flags.andThat: true, MyHomePageConfigKeys.flags.orThis: false, MyHomePageConfigKeys.flags.orThat: false, MyHomePageConfigKeys.flags.showTitle: true};
bool get isEnabled => map[ MyHomePageConfigKeys.flags.isEnabled ] == true;
bool get andThis => map[ MyHomePageConfigKeys.flags.andThis ] == true;
bool get andThat => map[ MyHomePageConfigKeys.flags.andThat ] == true;
bool get orThis => map[ MyHomePageConfigKeys.flags.orThis ] == true;
bool get orThat => map[ MyHomePageConfigKeys.flags.orThat ] == true;
bool get showTitle => map[ MyHomePageConfigKeys.flags.showTitle ] == true;
 }
class _FlagAccessor {const _FlagAccessor(this.config);

final Configuration config;

bool get isEnabled => config.flag( MyHomePageConfigKeys.flags.isEnabled ) == true;
bool get andThis => config.flag( MyHomePageConfigKeys.flags.andThis ) == true;
bool get andThat => config.flag( MyHomePageConfigKeys.flags.andThat ) == true;
bool get orThis => config.flag( MyHomePageConfigKeys.flags.orThis ) == true;
bool get orThat => config.flag( MyHomePageConfigKeys.flags.orThat ) == true;
bool get showTitle => config.flag( MyHomePageConfigKeys.flags.showTitle ) == true;
 }



// ********************************
// Images
// ********************************

class _Images {const _Images();

Map<String, String> get map => {MyHomePageConfigKeys.images.loginHeaderImage: 'https://pub.dev/static/hash-qr9i96gp/img/pub-dev-logo-2x.png', MyHomePageConfigKeys.images.storeFrontHeaderImage: 'https://pub.dev/static/hash-qr9i96gp/img/pub-dev-logo-2x.png'};
String get loginHeaderImage => map[ MyHomePageConfigKeys.images.loginHeaderImage ] ?? '/';
String get storeFrontHeaderImage => map[ MyHomePageConfigKeys.images.storeFrontHeaderImage ] ?? '/';
 }
class _ImageAccessor {const _ImageAccessor(this.config);

final Configuration config;

String get loginHeaderImage => config.image( MyHomePageConfigKeys.images.loginHeaderImage );
String get storeFrontHeaderImage => config.image( MyHomePageConfigKeys.images.storeFrontHeaderImage );
 }



// ********************************
// Routes
// ********************************

class _Routes {const _Routes();

Map<int, String> get map => {};
 }
class _RouteAccessor {const _RouteAccessor(this.config);

final Configuration config;

 }



// ********************************
// Colors
// ********************************

class _Colors {const _Colors();

Map<String, String> get map => {MyHomePageConfigKeys.colors.primary: 'CCCCCC', MyHomePageConfigKeys.colors.secondary: 'CC0000', MyHomePageConfigKeys.colors.tertiary: '800080'};
String get primary => map[ MyHomePageConfigKeys.colors.primary ] ?? '';
String get secondary => map[ MyHomePageConfigKeys.colors.secondary ] ?? '';
String get tertiary => map[ MyHomePageConfigKeys.colors.tertiary ] ?? '';
 }
class _ColorAccessor {const _ColorAccessor(this.config);

final Configuration config;

Color get primary => config.colorValue( MyHomePageConfigKeys.colors.primary );
Color get secondary => config.colorValue( MyHomePageConfigKeys.colors.secondary );
Color get tertiary => config.colorValue( MyHomePageConfigKeys.colors.tertiary );
 }



// ********************************
// Sizes
// ********************************

class _Sizes {const _Sizes();

Map<String, double> get map => {MyHomePageConfigKeys.sizes.homeTitleSize: 14.0, MyHomePageConfigKeys.sizes.detailTitleSize: 22.0};
double get homeTitleSize => map[ MyHomePageConfigKeys.sizes.homeTitleSize ] ?? 0.0;
double get detailTitleSize => map[ MyHomePageConfigKeys.sizes.detailTitleSize ] ?? 0.0;
 }
class _SizeAccessor {const _SizeAccessor(this.config);

final Configuration config;

double get homeTitleSize => config.size( MyHomePageConfigKeys.sizes.homeTitleSize );
double get detailTitleSize => config.size( MyHomePageConfigKeys.sizes.detailTitleSize );
 }



// ********************************
// Slang (i18n)
// ********************************

/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 2 (1 per locale)
///
/// Built on 2022-10-03 at 19:19 UTC

// coverage:ignore-file
// ignore_for_file: type=lint


const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _I18nDartEn> {
	en(languageCode: 'en', build: _I18nDartEn.build),
	de(languageCode: 'de', build: _I18nDartDe.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _I18nDartEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_I18nDartEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_I18nDartEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _I18nDartEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _I18nDartEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _I18nDartEn> {
	TranslationProvider({required super.child}) : super(
		initLocale: LocaleSettings.instance.currentLocale,
		initTranslations: LocaleSettings.instance.currentTranslations,
	);

	static InheritedLocaleData<AppLocale, _I18nDartEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _I18nDartEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_I18nDartEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _I18nDartEn> {
	LocaleSettings._() : super(locales: AppLocale.values, baseLocale: _baseLocale, utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale) => instance.setLocale(locale);
	static AppLocale setLocaleRaw(String rawLocale) => instance.setLocaleRaw(rawLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _I18nDartEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
}

// translations

// Path: <root>
class _I18nDartEn implements BaseTranslations<AppLocale, _I18nDartEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_I18nDartEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _I18nDartEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _I18nDartEn _root = this; // ignore: unused_field

	// Translations
	String get title => 'Hello, World!';
}

// Path: <root>
class _I18nDartDe implements _I18nDartEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_I18nDartDe.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, _I18nDartEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _I18nDartDe _root = this; // ignore: unused_field

	// Translations
	@override String get title => 'Hallo, Welt!';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _I18nDartEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'title': return 'Hello, World!';
			default: return null;
		}
	}
}

extension on _I18nDartDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'title': return 'Hallo, Welt!';
			default: return null;
		}
	}
}



// ********************************
// Configuration
// ********************************

class MyHomePageGeneratedScope extends ConfigScope {@override String name = '__GeneratedScope';

@override Map<String, bool> flags = const _Flags().map;

@override Map<String, String> images = const _Images().map;

@override Map<String, String> colors = const _Colors().map;

@override Map<String, double> sizes = const _Sizes().map;

@override Map<int, String> routes = const _Routes().map;

 }



// ********************************
// Configuration Extension
// ********************************

extension ConfigAccessor {_FlagAccessor get flags { _FlagAccessor( this ) } 
_ColorAccessor get colors { _ColorAccessor( this ) } 
_ImageAccessor get images { _ImageAccessor( this ) } 
_SizeAccessor get sizes { _SizeAccessor( this ) } 
_RouteAccessor get routes { _RouteAccessor( this ) } 
 }
