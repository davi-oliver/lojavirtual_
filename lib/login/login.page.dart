import 'package:components_ui/widgets/ui_kits/kit_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lojavirtual_/home/home.dart';
import 'package:lojavirtual_/login/functions/functions.dart';
import 'package:lojavirtual_/login/recover/recover.dart';
import 'package:lojavirtual_/login/store/login-store.dart';
import 'package:lojavirtual_/theme/themeMode.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with ValidTexFields {
  late ThemeModeApp themeModeApp;
  late LoginStore loginStore;

  @override
  void didChangeDependencies() {
    themeModeApp = Provider.of<ThemeModeApp>(context, listen: false);
    loginStore = Provider.of<LoginStore>(context, listen: false);
    super.didChangeDependencies();
  }

  final formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final spinkit = SpinKitFadingCube(
      itemBuilder: (_, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven
                ? themeModeApp.globalsThemeStyle.primaryColor
                : themeModeApp.globalsThemeStyle.secondaryColor,
          ),
        );
      },
    );
    return loginStore.loading
        ? Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: spinkit,
            ),
          )
        : Observer(builder: (_) {
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
                            margin: const EdgeInsets.only(
                                top: 30, left: 23, bottom: 43),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.login,
                                  color: themeModeApp
                                      .globalsThemeStyle.backgroundColor,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: themeModeApp
                                          .globalsThemeStyle.fontPrimary,
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
                                  color: themeModeApp
                                      .globalsThemeStyle.backgroundColor),
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 50),
                                    child: Image.network(
                                      "assets/coffe-logo.pn/g",
                                      width: MediaQuery.of(context).size.width *
                                          .2,
                                    ),
                                  ),
                                  Form(
                                    key: formState,
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 25),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          child: TextFormField(
                                            onChanged: isNotEmpty,
                                            controller: emailController,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: themeModeApp
                                                          .globalsThemeStyle
                                                          .primaryColor,
                                                      width: 1.0),
                                                ),
                                                labelText: "Email",
                                                floatingLabelStyle: TextStyle(
                                                    color: themeModeApp
                                                        .globalsThemeStyle
                                                        .primaryColor,
                                                    fontSize: 22),
                                                labelStyle:
                                                    TextStyle(fontSize: 20),
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior
                                                        .always,
                                                alignLabelWithHint: true,
                                                border:
                                                    const OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(width: 1.0),
                                                )),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 25),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .1,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          child: TextFormField(
                                            onChanged: isNotEmpty,
                                            controller: senhaController,
                                            keyboardType:
                                                TextInputType.visiblePassword,
                                            decoration: InputDecoration(
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: themeModeApp
                                                          .globalsThemeStyle
                                                          .primaryColor,
                                                      width: 1.0),
                                                ),
                                                labelText: "Senha",
                                                floatingLabelStyle: TextStyle(
                                                    color: themeModeApp
                                                        .globalsThemeStyle
                                                        .primaryColor,
                                                    fontSize: 22),
                                                labelStyle:
                                                    TextStyle(fontSize: 20),
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior
                                                        .always,
                                                alignLabelWithHint: true,
                                                border:
                                                    const OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(width: 1.0),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoginRecover()));
                                          },
                                          child: const Text(
                                            "Esqueci minha senha",
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                        )
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
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .45,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .065,
                                          decorationButton: BoxDecoration(
                                            color: themeModeApp
                                                .globalsThemeStyle
                                                .secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            boxShadow: const [
                                              BoxShadow(
                                                  color: Colors.black26,
                                                  offset: Offset(3, 4),
                                                  blurRadius: 0.5,
                                                  spreadRadius: 0.5)
                                            ],
                                          ),
                                          widgetCenter: Text(
                                            "Entrar",
                                            style: TextStyle(
                                                color: themeModeApp
                                                    .globalsThemeStyle
                                                    .textColorFraco,
                                                fontWeight: FontWeight.w300,
                                                fontSize: themeModeApp
                                                    .globalsThemeStyle
                                                    .sizeTextGrande),
                                          ),
                                          iconSufix: Icon(
                                            Icons.arrow_forward_ios,
                                            color: themeModeApp
                                                .globalsThemeStyle
                                                .backgroundColor,
                                          ),
                                          onTap: () async {
                                            loginStore.setLoading(true);

                                            if (formState.currentState!
                                                .validate()) {
                                              print("eeeuuuadValidado");
                                              await LoginFunctions(context)
                                                  .siginWithEmailAndPass()
                                                  .then((value) {
                                                print("eeeuuuads");

                                                if (value) {
                                                  return Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (_) =>
                                                              HomePage()));
                                                }
                                              }).catchError((onError) {
                                                print("eeeuuuads");

                                                print(onError);
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            'Erro ao tentar logar')));
                                              });
                                            }

                                            loginStore.setLoading(false);
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
            ;
          });
  }
}

mixin ValidTexFields {
  String? isNotEmpty(value) {
    if (value == "" || value == null) return "Campo não pode ser vazio";
  }
}
