import 'package:fasogaz_shop/Components/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NouveauMotDePasse.dart';

class MotDePasseOublier extends StatelessWidget {
  const MotDePasseOublier({super.key});

  @override
  Widget build(BuildContext context) {
    Size ScreenSize = MediaQuery.of(context).size;
    return Scaffold(
appBar: AppBar(
    automaticallyImplyLeading: false,
  backgroundColor: BackgroundColor,
),
      body: Center(
        child:

       SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
                   margin: const EdgeInsetsDirectional.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: WhiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Transform.translate(
                          offset: const Offset(150, 0),
                          child: const CloseButton(),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Vous avez oublié votre \n',
                                style: TextStyle(
                                    color: TextValidationColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'mot de passe ?',
                                style: TextStyle(
                                    color: TextValidationColor,
                                    textBaseline: TextBaseline.ideographic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                                // Alignez le texte au centre
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Veuillez entrer votre numero de \n',
                                style: TextStyle(
                                    color: TextValidationColor, fontSize: 15),
                              ),
                              TextSpan(
                                text: 'téléphone ou votre adresse mail',
                                style: TextStyle(
                                  color: TextValidationColor,
                                  fontSize: 15,
                                  textBaseline: TextBaseline.ideographic,
                                ),
                                // Alignez le texte au centre
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
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
                                borderSide:const BorderSide(
                                    color: Colors.transparent), // Aucun trait
                                borderRadius: BorderRaduisInput,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.transparent), // Aucun trait
                                borderRadius: BorderRaduisInput,
                              ),
                            ),

                          ),
                        ),
                        SizedBox.fromSize(
                          size: const Size.fromHeight(30),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Navigation vers la deuxième page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NouveauMotDePasse()),
                            );
                          },
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
                const Padding(padding: EdgeInsets.only(top: 155))
              ],
            ),
          ),

      ),
      backgroundColor: BackgroundColor,
    );
  }
}
