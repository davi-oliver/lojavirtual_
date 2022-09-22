import 'package:flutter/material.dart';
import 'package:lojavirtual_/home/home.dart';
import 'package:lojavirtual_/theme/globalsThemeStyle.dart';
import 'package:lojavirtual_/theme/themeMode.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          Provider<ThemeModeApp>(create: (_) => ThemeModeApp()),
        ],
        child: HomePage(),
      ),
    );
  }
}
