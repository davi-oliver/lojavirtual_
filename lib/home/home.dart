import 'package:flutter/material.dart';
import 'package:lojavirtual_/theme/themeMode.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

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
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: global.globalsThemeStyle.secondaryColor),
                height: size.height * .1,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: size.width * .2,
                      height: 30,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      "Só na Shopee",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: global.globalsThemeStyle.textColor),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: size.width * .3,
                      height: size.height * .15,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                'assets/logo.png',
                              ))),
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(
                          Uri.parse("https://shope.ee/20K4kUWYkq"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Card(
                        image: 'assets/img2.png',
                        titulo: 'Escova De Dentes Manual De Três Faces',
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(
                          Uri.parse("https://shope.ee/4KhrYqqt4C"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Card(
                        image: 'assets/img3.png',
                        titulo:
                            'Escova Recarregável Multifuncional Para Lavar Louça',
                      ),
                    ),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(
                          Uri.parse("https://shope.ee/AUIUvxOVPc"),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      child: Card(
                        image: 'assets/img4.png',
                        titulo: 'Mini máquina de lavar com balde de 4 L',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  String? image;
  Function? onTap;
  String? titulo;

  Card({this.image, this.onTap, this.titulo});
  @override
  Widget build(BuildContext context) {
    final global = Provider.of<ThemeModeApp>(context, listen: false);
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * .3,
          width: size.width * .2,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 50.0, // has the effect of softening the shadow
                  spreadRadius: 0.0, // has the effect of extending the shadow
                  offset: Offset(
                    1.0, // horizontal, move right 10
                    2.0, // vertical, move down 10
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    image!,
                  ))),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  width: size.width * .2,
                  height: size.height * .08,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          titulo!,
                          style: TextStyle(
                              color: global.globalsThemeStyle.textColor),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: size.height * .05,
                          width: size.width * .01,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: global.globalsThemeStyle.tertiaryColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.shopping_basket_outlined,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Compre já',
                                style: TextStyle(
                                    color: global
                                        .globalsThemeStyle.textColorFraco),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
