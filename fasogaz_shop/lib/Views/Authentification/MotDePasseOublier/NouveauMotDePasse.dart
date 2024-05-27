import 'package:fasogaz_shop/Components/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NouveauMotDePasse extends StatelessWidget {
  const NouveauMotDePasse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: BackgroundColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                fasogaz,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TilteMotPass,
                    fontSize: 35),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 40),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: WhiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CloseButton(),
                        ],
                      ),
                      Text(
                        'Changer votre mot',
                        style: TextStyle(
                            color: TextValidationColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'de passe ',
                        style: TextStyle(
                            color: TextValidationColor,
                            textBaseline: TextBaseline.ideographic,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 5),
                            child: Text(
                              "Nouveau mot de passe",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                      Container(
                        width: double.infinity,
                        height: SizeTextFiedInputMotPass.height,

                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            fillColor: InputColorBlanSale,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRaduisInput,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRaduisInput,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, bottom: 3),
                            child: Text(
                              "Confirmez le mot de passe",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                      Container(
                        width: double.infinity,
                        height: SizeTextFiedInputMotPass.height,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            fillColor: InputColorBlanSale,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRaduisInput,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRaduisInput,
                            ),
                          ),
                        ),
                      ),
                      SizedBox.fromSize(
                        size: const Size.fromHeight(30),
                      ),
                      ElevatedButton(
                        onPressed: null,
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side: BorderSide(color: BorderValidationColor),
                            ),
                          ),
                          backgroundColor:
                              MaterialStatePropertyAll(ValidationColor),
                          minimumSize:
                              MaterialStateProperty.all(const Size(150, 40)),
                        ),
                        child: const Text(
                          "Continuer",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      
                    ],
                  )),
              const Padding(padding: EdgeInsets.only(bottom: 150)),
            ],
          ),
        ),
      ),
      backgroundColor: BackgroundColor,
    );
  }
}
