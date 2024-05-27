
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardsLivreur extends StatefulWidget {
  const  CardsLivreur({Key? key, })
      : super(key: key);
  @override
  State< CardsLivreur> createState() => _CardsStockState();
}

class _CardsStockState extends State< CardsLivreur> {
  int number = 1250235;
  int poids = 6;
  int qte = 10;
  String type = "Sodigaz";
  int montant = 2100;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 2,
        shadowColor: Colors.black,
        color: Colors.greenAccent[5],
        child: SizedBox(
          width: double.infinity,
          height: 110,
          child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //CircleAvatar
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 5),
                  child: Text(
                    "Commande n°$number",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ),
                ), //Text
                const SizedBox(
                  height: 3,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "type: $type $poids kg",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold), //Textstyle
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    qte <= 9 ? 'Nombre :  0$qte' : 'Nombre :  $qte',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 3,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Montant:  $montant Fcfa',
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold), //Textstyle
                  ),
                ),
              ],
            ),
            Container(
              width: 60,
              height: 30,
              margin: const EdgeInsets.only(left: 95),
              child: TextButton(
                onPressed: () => 'Null',
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: const Text(
                  "Detail",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
