import 'package:flutter/material.dart';
import 'package:lojavirtual_/theme/themeMode.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final global = Provider.of<ThemeModeApp>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: global.globalsThemeStyle.secondaryColor,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              // montar layout
            ],
          ),
        ),
      ),
    );
  }
}
