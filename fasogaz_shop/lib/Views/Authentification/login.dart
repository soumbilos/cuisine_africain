// ignore_for_file: non_constant_identifier_names

import 'package:fasogaz_shop/Views/Home/home_fonctionnaliter/desboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Components/data.dart';
import '../Create_Shop/Create_Shop.dart';
import '../Home/Drawers_Home.dart';
import '../Home/Shop_Home.dart';
import 'MotDePasseOublier/MotDePasseOublier.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _globalkey = GlobalKey<FormState>();
  // ignore: duplicate_ignore
  // ignore: non_constant_identifier_names
  String _ErrorText = "";
  String _ErrorTextPassWord = "";

  bool obscureText = true;
  bool isEmailSelected = false;
  bool isPhoneSelected = true;
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox.fromSize(
                size: const Size(0, 150),
              ),
              Center(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 108.0,
                    height: 99.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox.fromSize(
                size: Size.fromHeight(20),
              ),
              const Text(
                "Connexion",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0),
              ),
              SizedBox.fromSize(
                size: const Size(0, 15),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // telephon
                  SizedBox(
                    width: WithSizeContenairIconInput.width,
                    height: WithSizeContenairIconInput.height,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(10, 20)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              isPhoneSelected ? Colors.black : Colors.white)),
                      onPressed: () {
                        setState(() {
                          isPhoneSelected = true;
                          isEmailSelected = false;
                          _textController.clear();
                        });
                      },
                      child: Transform.translate(
                        offset: const Offset(-20, -1.5),
                        child: Icon(
                          Icons.call,
                          size: 23,
                          color: isPhoneSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox.fromSize(
                    size: const Size(3, 0),
                  ),
                  SizedBox(
                    width: WithSizeContenairIconInput.width,
                    height: WithSizeContenairIconInput.height,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(10, 20)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              isEmailSelected ? Colors.black : Colors.white)),
                      onPressed: () {
                        setState(() {
                          isPhoneSelected = false;
                          isEmailSelected = true;
                          _textController.clear();
                        });
                      },
                      child: Transform.translate(
                        offset: const Offset(-21, -1),
                        child: Icon(
                          Icons.email_outlined,
                          size: 24,
                          color: isEmailSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox.fromSize(
                        size: Size.fromHeight(10),
                      ),

                      PaddingSpace,
                      Form(
                          key: _globalkey,
                          child: Column(
                            children: [
                              SizedBox(
                                width: WithSizeContenaireTextFiedInput.width,
                                height: WithSizeContenaireTextFiedInput.height,
                                child: TextFormField(
                                  textAlign: TextAlign.start,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      setState(() {
                                        _ErrorText = "Champ obligatoire.";
                                      });
                                    } else if (value != null ||
                                        value.isNotEmpty) {
                                      _ErrorText = " ";
                                    }
                                  },
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: isPhoneSelected
                                        ? "Entrer votre numéro de téléphone"
                                        : "Entrer votre adresse mail",
                                    hintStyle: const TextStyle(
                                        color: Colors.black45, fontSize: 15),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    prefixIcon: Container(
                                      width: WithSizeContenairIconInput.width,
                                      height: WithSizeContenairIconInput.height,
                                      margin: EdgeInsets.only(
                                          right: MarginIconPlace),
                                      padding: EdgeInsets.all(PaddingIconPlace),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            borderRadiusContenaireIcon,
                                      ),
                                      child: Transform.translate(
                                        offset: const Offset(-1.5, -4),
                                        child: isPhoneSelected
                                            ? const Icon(Icons.call,
                                                color: Colors.white, size: 23)
                                            : const Icon(
                                                Icons.mail_outline_outlined,
                                                color: Colors.white,
                                                size: 23),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                _ErrorText,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),

                              // mot de passe
                              PaddingSpace,
                              SizedBox(
                                width: WithSizeContenaireTextFiedInput.width,
                                height: WithSizeContenaireTextFiedInput.height,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  obscureText: obscureText,
                                  enableInteractiveSelection: false,
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      hintText: "Votre mot de passe",
                                      hintStyle: const TextStyle(
                                          color: Colors.black45, fontSize: 15),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 10.0),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRaduisInput),
                                      prefixIcon: Container(
                                        width: WithSizeContenairIconInput.width,
                                        height:
                                            WithSizeContenairIconInput.height,
                                        margin: EdgeInsets.only(
                                            right: MarginIconPlace),
                                        padding:
                                            EdgeInsets.all(PaddingIconPlace),
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              borderRadiusContenaireIcon,
                                        ),
                                        child: Transform.translate(
                                          offset: const Offset(-3, -4),
                                          child: const Icon(Icons.lock_outline,
                                              size: 23.0, color: Colors.white),
                                        ),
                                      ),
                                      suffixIcon: Transform.translate(
                                        offset: Offset(0, -2.3),
                                        child: IconButton(
                                          icon: Icon(
                                            obscureText
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                            color: Colors.black,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              obscureText = !obscureText;
                                            });
                                          },
                                        ),
                                      )),
                                  onChanged: (value) {
                                    setState(() {
                                      if (value == null || value.isEmpty) {
                                        setState(() {
                                          _ErrorTextPassWord =
                                              "Champ obligatoire.";
                                        });
                                      } else if (value != null ||
                                          value.isNotEmpty) {
                                        _ErrorTextPassWord = " ";
                                      }
                                    });
                                  },
                                ),
                              ),

                              Text(_ErrorTextPassWord),

                              // validation de la creation du compte
                              PaddingSpace,
                              ElevatedButton(
                                onPressed: () {
                                  // AuthService.isAuth = true;
                                  // QR.to("/home");

                                  // if (_globalkey.currentState!.validate()) {
                                  //   // Si toutes les données sont correctes, enregistrez les données et traitez-les
                                  //   // Vous pouvez ajouter votre logique de traitement ici
                                  //   ScaffoldMessenger.of(context).showSnackBar(
                                  //     SnackBar(
                                  //       content: Text(
                                  //           _ErrorText),
                                  //
                                  //     ),
                                  //
                                  //   );
                                  // }
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Drawers_Home(
                                                body: fonction_desboard(),
                                              )));
                                },
                                style: ButtonStyle(
                                    fixedSize: MaterialStateProperty.all(Size(
                                        WithSizeContenaireTextFiedInput.width,
                                        WithSizeContenaireTextFiedInput
                                            .height)),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRaduisInput)),
                                    backgroundColor:
                                        MaterialStatePropertyAll(WhiteColor)),
                                child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Se connecter",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Padding(padding: EdgeInsets.all(4)),
                                    Icon(
                                      Icons.east_outlined,
                                      size: 23,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                      SizedBox.fromSize(
                        size: Size.fromHeight(10),
                      ),
                      TextButton(
                        child: const Text(
                          "Mot de passe oublier ?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        onPressed: () {
                          // Navigation vers la deuxième page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MotDePasseOublier()),
                          );
                        },
                      ),

                      // partie " OR
                      const Padding(padding: EdgeInsets.all(6.0)),
                      Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 160,
                              height: 0.5,
                              color: Colors.black,
                            ),
                            const Padding(padding: EdgeInsets.all(3.0)),
                            const Text(
                              "OU",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Padding(padding: EdgeInsets.all(3.0)),
                            Container(
                              width: 160,
                              height: 0.5,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),

                      // validation de la creation du compte
                      PaddingSpace,
                      SizedBox(
                        width: WithSizeContenaireTextFiedInput.width,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigation vers la deuxième page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  // a remplacer par Create_Shop
                                  builder: (context) => Create_Shop()),
                            );
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRaduisInput)),
                              backgroundColor:
                                  MaterialStatePropertyAll(WhiteColor)),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Créer un compte",
                                style: TextStyle(color: Colors.black),
                              ),
                              Padding(padding: EdgeInsets.all(4)),
                              Icon(
                                Icons.east_outlined,
                                size: 23,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(20))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('_ErrorTextPassWord', _ErrorTextPassWord));
  }
}
