import 'package:flutter/material.dart';
import 'package:lojavirtual_/theme/globalsThemeStyle.dart';
import 'package:lojavirtual_/theme/themeDark.dart';
import 'package:lojavirtual_/theme/themeLight.dart';

class ThemeModeApp {
  late GlobalsThemStyle globalsThemeStyle = ThemeLight();

  ThemeMode currentTeme = ThemeMode.light;

  Future<void> setTheme() async {
    globalsThemeStyle =
        currentTeme == ThemeMode.light ? ThemeDark() : ThemeLight();
  }
}
