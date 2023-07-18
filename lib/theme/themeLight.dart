import 'package:flutter/material.dart';
import 'package:lojavirtual_/theme/globalsThemeStyle.dart';

class ThemeLight implements GlobalsThemStyle {
  @override
  var primaryColor = Color.fromARGB(255, 47, 26, 11);

  @override
  var secondaryColor = Color.fromARGB(255, 143, 123, 96);

  @override
  var tertiaryColor = Color.fromARGB(255, 147, 184, 46);

  @override
  var textColor = Color.fromARGB(255, 59, 19, 19);

  @override
  var textColorFraco = Color.fromARGB(255, 236, 235, 235);

  @override
  var fontDefault = "QuickSand";

  @override
  var fontPrimary = "NotoSans";

  @override
  var fontSecondary = "SourceSansPro";

  @override
  var sizeText = 10;

  @override
  var sizeTextAppBar = 15;

  @override
  var sizeTextBotao = 14;

  @override
  var sizeTextGrande = 20;

  @override
  var sizeTextMedio = 17;

  @override
  var sizeTextPequeno = 12;

  @override
  var backgroundColor = Color.fromARGB(255, 241, 239, 239);
}
