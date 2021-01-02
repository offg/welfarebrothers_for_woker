import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _primaryColor = Color(0xff00a6c0);
Map<int, Color> _colorCodes = {
  50: _primaryColor.withOpacity(0.1),
  100: _primaryColor.withOpacity(0.2),
  200: _primaryColor.withOpacity(0.3),
  300: _primaryColor.withOpacity(0.4),
  400: _primaryColor.withOpacity(0.5),
  500: _primaryColor.withOpacity(0.6),
  600: _primaryColor.withOpacity(0.7),
  700: _primaryColor.withOpacity(0.8),
  800: _primaryColor.withOpacity(0.9),
  900: _primaryColor.withOpacity(1.0),
};
var _materialPrimaryColor = MaterialColor(_primaryColor.value, _colorCodes);
const _secondaryColor = Color(0xff0b749c);

var _colorScheme = ColorScheme.fromSwatch(
  primarySwatch: _materialPrimaryColor,
  accentColor: Colors.amberAccent,
);

// const _textColor = Color(0xff6a888c);
const _textColor = Colors.black54;
const _fontWeightThin = FontWeight.w100;
const _fontWeightNormal = FontWeight.w400;
const _fontWeightMedium = FontWeight.w600;
const _fontWeightBold = FontWeight.w700;
const _textStyleBase = TextStyle(
  color: _textColor,
  fontWeight: _fontWeightMedium,
);

TextStyle _textStyleBySize(double size) {
  return _textStyleBase.merge(TextStyle(fontSize: size, height: 1));
}

var _textTheme = TextTheme(
  headline1: _textStyleBySize(112.0),
  headline2: _textStyleBySize(56.0),
  headline3: _textStyleBySize(45.0),
  headline4: _textStyleBySize(34.0),
  headline5: _textStyleBySize(
    24.0,
  ),
  headline6: _textStyleBySize(20.0),
  subtitle1: _textStyleBySize(12.0),
  bodyText1: _textStyleBySize(15.0),
  bodyText2: _textStyleBySize(13.0),
  caption: _textStyleBySize(14.0),
  button: _textStyleBySize(13.0).merge(TextStyle(color: Colors.white)),
  subtitle2: _textStyleBySize(15.0),
  overline: _textStyleBySize(12.0),
);

var _appBarTheme = AppBarTheme(
  color: Colors.transparent,
  brightness: Brightness.light,
  shadowColor: Colors.transparent,
  elevation: 0,
  iconTheme: _iconTheme,
  centerTitle: true,
);

var _bottomAppBarTheme = BottomAppBarTheme(
  elevation: 0,
  color: Colors.transparent,
  shape: CircularNotchedRectangle(),
);

var _bottomNavigationBarTheme = BottomNavigationBarThemeData(
  backgroundColor: Colors.transparent,
  elevation: 0,
  showUnselectedLabels: false,
  showSelectedLabels: false,
  selectedIconTheme: _iconTheme,
  unselectedIconTheme: _iconTheme.merge(
    IconThemeData(color: Colors.blueGrey),
  ),
);

var _iconTheme = IconThemeData(
  size: 20,
  opacity: 0.8,
  color: _primaryColor,
);
var _buttonTheme = ButtonThemeData(
  minWidth: 135.0,
  height: 38,
  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
  colorScheme: _colorScheme,
  textTheme: ButtonTextTheme.primary,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
);

var welfareBrothersTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _primaryColor,
  accentColor: _secondaryColor,
  backgroundColor: Colors.white,
  colorScheme: _colorScheme,
  buttonTheme: _buttonTheme,

  scaffoldBackgroundColor: Colors.white,
  canvasColor: Colors.white,
  primarySwatch: _materialPrimaryColor,
  iconTheme: _iconTheme,
  appBarTheme: _appBarTheme,
  bottomAppBarTheme: _bottomAppBarTheme,
  // text
  textTheme: _textTheme,
  bottomNavigationBarTheme: _bottomNavigationBarTheme,
);
