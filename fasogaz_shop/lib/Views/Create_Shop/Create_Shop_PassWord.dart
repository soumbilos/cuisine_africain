import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components/data.dart';
import 'End_Of_Create_sho.dart';

class Create_Shop_PassWord extends StatefulWidget {
  const Create_Shop_PassWord({super.key});

  @override
  State<Create_Shop_PassWord> createState() => _Create_Shop_PassWordState();
}

class _Create_Shop_PassWordState extends State<Create_Shop_PassWord> {
  String? _topModalData;
  bool obscureText = true;
  bool isEmailSelected = false;
  bool isPhoneSelected = true;
  final TextEditingController _textController = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox.fromSize(
                size: const Size(0, 50),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: Center(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          fasogaz,
                          style: TextStyle(
                              color: TilteLogoColor,
                              fontSize: TextFontSize.height,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Center(
                        child: Text(
                          "Créer votre Boutique",
                          style: TextStyle(
                              color: TextRedColor,
                              fontSize: TextFontSize.height - 8,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 13),
                          child: Row(
                            children: [
                              BackButton(
                                color: Colors.black,
                                style: ButtonStyle(),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Protéger votre compte',
                                style: TextStyle(
                                    color: TilteLogoColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox.fromSize(
                size: const Size(0, 15),
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

                      //Partie mail
                      PaddingSpace,
                      Padding(
                        padding: EdgeInsets.only(right: 30, bottom: 5),
                        child: Text(
                          "Votre e_mail ou numéro de téléphone",
                          style: TextStyle(
                              color: TilteLogoColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        width: WithSizeContenaireTextFiedInput.width,
                        height: WithSizeContenaireTextFiedInput.height,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),

                      // mot de passe
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 160, bottom: 5),
                        child: Text(
                          "Votre mot de passe",
                          style: TextStyle(
                              color: TilteLogoColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      SizedBox(
                        width: WithSizeContenaireTextFiedInput.width,
                        height: WithSizeContenaireTextFiedInput.height,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          obscureText: obscureText,
                          textAlign: TextAlign.center,
                          enableInteractiveSelection: false,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintStyle: const TextStyle(
                                  color: Colors.black45, fontSize: 15),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRaduisInput),
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
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 90, bottom: 5),
                        child: Text(
                          "Confirmer votre mot de passe",
                          style: TextStyle(
                              color: TilteLogoColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 15),
                        ),
                      ),

                      SizedBox(
                        height: 2,
                      ),
                      SizedBox(
                        width: WithSizeContenaireTextFiedInput.width,
                        height: WithSizeContenaireTextFiedInput.height,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          obscureText: obscureText,
                          textAlign: TextAlign.center,
                          enableInteractiveSelection: false,
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRaduisInput),
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
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                fixedSize:
                                    MaterialStateProperty.all(Size(130, 20)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRaduisInput)),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color(0xffa60606))),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Annuler",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => End_Of_Create_sho()));
                            },
                            style: ButtonStyle(
                                fixedSize:
                                    MaterialStateProperty.all(Size(140, 20)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRaduisInput)),
                                backgroundColor:
                                    MaterialStatePropertyAll(OkColor)),
                            child: const Row(
                              children: <Widget>[
                                Text(
                                  "Continuer",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 15),
                                ),
                                Padding(padding: EdgeInsets.only(left: 9)),
                                Icon(
                                  Icons.east_outlined,
                                  size: 15,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
