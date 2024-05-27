import 'package:fasogaz_shop/Components/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Contacter-nous",
                    style: TextStyle(
                        color: TilteLogoColor,
                        fontWeight: fontBold,
                        fontSize: 25),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 60, bottom: 3),
                child: Text(
                  "Nom et Prenom",
                  style: TextStyle(
                      color: TilteLogoColor,
                      fontWeight: fontBold,
                      fontSize: 15),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  keyboardType: TextInputType.text,
                  enableInteractiveSelection: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: " Ex: Zongo Paul",
                    hintStyle:
                        const TextStyle(color: Colors.black45, fontSize: 15),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    border: OutlineInputBorder(borderRadius: BorderRaduisInput),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, bottom: 3),
                child: Text(
                  "Numéro de téléphone ou mail",
                  style: TextStyle(
                      color: TilteLogoColor,
                      fontWeight: fontBold,
                      fontSize: 15),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  keyboardType: TextInputType.text,
                  enableInteractiveSelection: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: " Ex: e-gaz@gmail.com",
                    hintStyle:
                        const TextStyle(color: Colors.black45, fontSize: 15),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                    border: OutlineInputBorder(borderRadius: BorderRaduisInput),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25, bottom: 3),
                child: Text(
                  "Message",
                  style: TextStyle(
                      color: TilteLogoColor,
                      fontWeight: fontBold,
                      fontSize: 15),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  keyboardType: TextInputType.text,
                  maxLines: 3,
                  enableInteractiveSelection: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText:
                        " Ex: Votre application nous aide beaucoup.Merci bien",
                    hintStyle:
                        const TextStyle(color: Colors.black45, fontSize: 15),
                    contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
                    border: OutlineInputBorder(borderRadius: BorderRaduisInput),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(const Size(140, 20)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRaduisInput)),
                        backgroundColor: MaterialStatePropertyAll(BackColor)),
                    child: const Text(
                      "Annuler",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 15),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(const Size(140, 20)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRaduisInput)),
                        backgroundColor: MaterialStatePropertyAll(OkColor)),
                    child: const Text(
                      "Envoyer",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
