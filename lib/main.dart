import 'package:flutter/material.dart';
import 'package:shopup/utils/theme/theme.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    themeMode: ThemeMode.system,
    theme: TAppTheme.lightTheme,
    darkTheme: TAppTheme.darkTheme,
  ));
}
