import 'package:fasogaz_shop/Views/Home/Shop_Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Drawers_Home.dart';
import '../Views_Screens/stocks/Stock.dart';
import '../Views_Screens/commande/commande.dart';
import '../Views_Screens/statistique.dart';
import 'navigationBoutton.dart';

class fonction_desboard extends StatelessWidget {
  const fonction_desboard({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Column(
        children: [
          Expanded(child: BottomNavigation()),

        ],
      ),
    );
  }
}


class desboard extends StatelessWidget {
  const desboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 60, bottom: 30),
            child: Text(
              "Votre tableau de bord",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Drawers_Home(
                      body: stockbar(),
                    ),));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size(160, 160),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.account_balance,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Gerer mon",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      Text("stock",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22))
                    ],
                  )),
              TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Drawers_Home(title:'Gérer mon stock',
                                body: ShopHome())));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size(160, 160),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "MA",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      Text("boutique",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22))
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Drawers_Home(body: const Commande_screen())));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size(160, 160),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.ballot_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Voir mes",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      Text("commandes",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22))
                    ],
                  )),
              TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const statistique()));
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size(160, 160),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.bar_chart_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        "Statistique",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),

                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}




