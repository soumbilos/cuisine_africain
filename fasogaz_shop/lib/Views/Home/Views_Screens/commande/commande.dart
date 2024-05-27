import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Commande_screen extends StatefulWidget {
  const Commande_screen({super.key});

  @override
  State<Commande_screen> createState() => _Commande_screenState();
}

class _Commande_screenState extends State<Commande_screen> {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              children: List.generate(7, (index) =>CardsCommande()),
            ), //SizedBox
            ),
      );
  }
}

class CardsCommande extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 2,
      shadowColor: Colors.black,
      color: Colors.greenAccent[5],
      child: Container(
        width: double.infinity,
        height: 100,
        child: Row(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/backgroung.png',
                fit: BoxFit.cover,
                width: 80,
                height: 100,
                repeat: ImageRepeat.noRepeat,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //CircleAvatar
              const Text(
                'Bouteille de gaz 12kg',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ), //Textstyle
              ), //Text
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                  '25.0000 Fcfa',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold), //Textstyle
                ),
              ), //Text
            ],
          ),

          Container(
            width: 92,
            height: 35,
            margin: const EdgeInsets.only(left: 0, top: 5),
            child: TextButton(
              onPressed: () => 'Null',
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        5),
                  ),
                ),
              ),
              child: const Text("En cours...", style: TextStyle(color: Colors.white),),
            ),

          ),
        ]),
      ), //Padding
    );
  }
}
