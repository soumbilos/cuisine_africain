import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Components/data.dart';

class Ajouter extends StatelessWidget {
  const Ajouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
          child: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            "Ajouter un article",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/backgroung.png',
              fit: BoxFit.cover,
              width: 120,
              height: 100,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
        ),
        const TextButton(
            onPressed: null,
            child: Text(
              "Ajouter une image",
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            )),
        const SizedBox(
          height: 5,
        ),
        Expanded(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      autocorrect: true,
                      enableInteractiveSelection: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: " Nom de l'article",
                        hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 5),
                        border:
                            OutlineInputBorder(borderRadius: BorderRaduisInput),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      maxLines: 1,
                      autocorrect: true,
                      enableInteractiveSelection: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: " Prix de l'article",
                        hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 5),
                        border:
                            OutlineInputBorder(borderRadius: BorderRaduisInput),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      //  maxLines: 3,
                      autocorrect: true,
                      enableInteractiveSelection: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Quelques Details sur l'article",
                        hintStyle: const TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 25.0),
                        border:
                            OutlineInputBorder(borderRadius: BorderRaduisInput),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
                      "Ajouter",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 15),
                    ),
                  ),
                ])))
      ])),
    );
  }
}
