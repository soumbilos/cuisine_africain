import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components/data.dart';
import '../Home/Drawers_Home.dart';
import '../Home/Views_Screens/Contact.dart';
import '../Home/home_fonctionnaliter/navigationBoutton.dart';

class End_Of_Create_sho extends StatelessWidget {
  const End_Of_Create_sho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  fasogaz,
                  style: TextStyle(
                      color: TilteLogoColor,
                      fontWeight: fontBold,
                      fontSize: TextFontSize.height),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Créer votre boutique",
                  style: TextStyle(
                      color: BackgroundColor,
                      fontWeight: fontBold,
                      fontSize: 25),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, right: 5, left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 28,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Information suplementaire",
                        style: TextStyle(
                            color: TilteLogoColor,
                            fontWeight: fontBold,
                            fontSize: 23),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 108.0,
                      height: 108.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextButton(
                    onPressed: null,
                    child: Text(
                      "Ajouter un logo",
                      style: TextStyle(
                          color: TilteLogoColor,
                          fontWeight: fontBold,
                          fontSize: 20),
                    )),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => Drawers_Home(title: '',
                      body: BottomNavigation())));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0),
                    ),
                    minimumSize: Size(155, 45),
                    backgroundColor: OkColor1,
                  ),
                  child: Text(
                    "Terminer",
                    style: TextStyle(
                        color: ValidationColor,
                        fontWeight: fontBold,
                        fontSize: 20),
                  ), 
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
