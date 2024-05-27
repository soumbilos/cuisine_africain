import 'package:flutter/material.dart';

import '../Components/data.dart';
import 'Authentification/login.dart';
import 'Create_Shop/Create_Shop.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    Size Sizescreen = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Fond d'écran (image)
          Image.asset(
            'assets/images/backgroung.png',
            fit: BoxFit.cover,
            height: Sizescreen.height,
            width: Sizescreen.width,
            repeat: ImageRepeat.noRepeat,
          ),

          Container(
            color: BackgroundColor.withOpacity(0.8),
          ),

          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.cover,
                          width: 130,
                          height: 130,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      fasogaz,
                      style: TextStyle(
                          color: TilteLogoColor,
                          fontWeight: FontWeight.bold,
                          fontSize: TextFontSize.height),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Créer,",
                      style: TextStyle(
                          color: TextWhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: TextFontSize.height),
                    ),
                    Text(
                      "Publier et gerer",
                      style: TextStyle(
                          color: TextWhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: TextFontSize.height),
                    ),
                    Text(
                      "Votre boutique",
                      style: TextStyle(
                          color: TextWhiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: TextFontSize.height),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Text(
                      "L'outil incontournable",
                      style: TextStyle(
                          color: TextWhiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "pour la gestion de votre boutique",
                      style: TextStyle(
                          color: TextWhiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 40.0, // Ajustez la hauteur
                  width: 280.0, // Ajustez la largeur
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Create_Shop()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(
                          0xcbefebeb), // Couleur du fond (blanc dans ce cas)
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Rayon de bordure
                      ),
                    ),
                    child: const Text(
                      "Créer une boutique",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Ou",
                    style: TextStyle(
                        color: TextWhiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40.0,
                  width: 280.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10.0), // Rayon de bordure
                      ),
                    ),
                    child: const Text(
                      "Se connecter",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
