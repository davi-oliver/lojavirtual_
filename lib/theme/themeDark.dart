import 'package:flutter/material.dart';
import 'package:lojavirtual_/theme/globalsThemeStyle.dart';

class ThemeDark implements GlobalsThemStyle {
  @override
  var primaryColor = Color.fromARGB(255, 41, 40, 40);

  @override
  var secondaryColor = Color.fromARGB(255, 10, 22, 189);

  @override
  var tertiaryColor = Color.fromARGB(255, 147, 184, 46);

  @override
  var textColor = Colors.white;

  @override
  var textColorFraco = Color.fromARGB(255, 74, 72, 72);

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
  var backgroundColor = Colors.white;
}
