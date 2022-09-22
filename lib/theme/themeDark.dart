import 'package:flutter/material.dart';
import 'package:lojavirtual_/theme/globalsThemeStyle.dart';

class ThemeDark implements GlobalsThemStyle {
  @override
  var primaryColor = Color.fromARGB(255, 41, 40, 40);

  @override
  var secondaryColor = Color.fromARGB(255, 210, 29, 16);

  @override
  var tertiaryColor = Color.fromARGB(255, 186, 37, 15);

  @override
  var textColor = Colors.white;

  @override
  var textColorFraco = Color.fromARGB(255, 74, 72, 72);
}
