import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Vendu extends StatelessWidget {
  const Vendu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: List.generate(7, (index) =>CardsVendu()),
      ), //SizedBox
    );
  }
}

class CardsVendu extends StatelessWidget {

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
                alignment: Alignment.center,
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
                backgroundColor: MaterialStateProperty.all(Color(0xffd90606)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        5),
                  ),
                ),
              ),
              child: const Text("Supprimer", style: TextStyle(color: Colors.white),),
            ),

          ),
        ]),
      ), //Padding
    );
  }
}
