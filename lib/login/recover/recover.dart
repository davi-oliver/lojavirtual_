import 'package:components_ui/widgets/ui_kits/kit_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lojavirtual_/login/functions/functions.dart';
import 'package:lojavirtual_/login/login.page.dart';
import 'package:lojavirtual_/theme/themeMode.dart';
import 'package:provider/provider.dart';

class LoginRecover extends StatefulWidget {
  const LoginRecover({super.key});

  @override
  State<LoginRecover> createState() => _LoginRecoverState();
}

class _LoginRecoverState extends State<LoginRecover> with ValidTexFields {
  late ThemeModeApp themeModeApp;

  @override
  void didChangeDependencies() {
    themeModeApp = Provider.of<ThemeModeApp>(context, listen: false);
    super.didChangeDependencies();
  }

  final formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: true,
          top: false,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: themeModeApp.globalsThemeStyle.primaryColor,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(top: 30, left: 23, bottom: 43),
                    child: Row(
                      children: [
                        Icon(
                          Icons.login,
                          color: themeModeApp.globalsThemeStyle.backgroundColor,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily:
                                  themeModeApp.globalsThemeStyle.fontPrimary,
                              fontSize: themeModeApp
                                  .globalsThemeStyle.sizeTextPequeno,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * .7,
                      width: MediaQuery.of(context).size.width * .85,
                      margin: const EdgeInsets.symmetric(vertical: 120),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(3, 4),
                                blurRadius: 0.5,
                                spreadRadius: 0.5)
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color:
                              themeModeApp.globalsThemeStyle.backgroundColor),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 50),
                            child: Image.asset(
                              "assets/itajuba_contorno.png",
                              width: MediaQuery.of(context).size.width * .45,
                            ),
                          ),
                          Form(
                            key: formState,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 25),
                                  height:
                                      MediaQuery.of(context).size.height * .1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: TextFormField(
                                    onChanged: isNotEmpty,
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: themeModeApp
                                                  .globalsThemeStyle
                                                  .primaryColor,
                                              width: 1.0),
                                        ),
                                        labelText: "Email",
                                        floatingLabelStyle: TextStyle(
                                            color: themeModeApp
                                                .globalsThemeStyle.primaryColor,
                                            fontSize: 22),
                                        labelStyle: TextStyle(fontSize: 20),
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                        alignLabelWithHint: true,
                                        border: const OutlineInputBorder(
                                          borderSide: BorderSide(width: 1.0),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                KitButton(
                                  width:
                                      MediaQuery.of(context).size.width * .45,
                                  height:
                                      MediaQuery.of(context).size.height * .065,
                                  decorationButton: BoxDecoration(
                                    color: themeModeApp
                                        .globalsThemeStyle.secondaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset(3, 4),
                                          blurRadius: 0.5,
                                          spreadRadius: 0.5)
                                    ],
                                  ),
                                  widgetCenter: Text(
                                    "Recuperar",
                                    style: TextStyle(
                                        color: themeModeApp
                                            .globalsThemeStyle.textColorFraco,
                                        fontWeight: FontWeight.w300,
                                        fontSize: themeModeApp
                                            .globalsThemeStyle.sizeTextGrande),
                                  ),
                                  iconSufix: Icon(
                                    Icons.arrow_forward_ios,
                                    color: themeModeApp
                                        .globalsThemeStyle.backgroundColor,
                                  ),
                                  onTap: () async {
                                    if (formState.currentState!.validate()) {
                                      print("eeeuuuadValidado");
                                      await LoginFunctions(context)
                                          .recoverPass()
                                          .then((value) {
                                        print("eeeuuuads");

                                        if (value) {}
                                      }).catchError((onError) {
                                        print("Error");

                                        print(onError);
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    'Erro ao tentar logar')));
                                      });
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
