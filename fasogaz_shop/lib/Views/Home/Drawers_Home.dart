import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import '../../Components/data.dart';
import '../../Components/data.dart';
import 'Shop_Home.dart';
import 'Views_Screens/Contact.dart';
import 'Views_Screens/Propos.dart';
import 'Views_Screens/stocks/Stock.dart';
import 'Views_Screens/commande/commande.dart';
import 'Views_Screens/parametre.dart';
import 'home_fonctionnaliter/ajouter.dart';
import 'home_fonctionnaliter/desboard.dart';
import 'home_fonctionnaliter/navigationBoutton.dart';

class Drawers_Home extends StatefulWidget {
  final Widget body;
  Drawers_Home({Key? key, String? title, required this.body}) : super(key: key);

  @override
  _Drawers_HomeScreenState createState() => _Drawers_HomeScreenState();
}

class _Drawers_HomeScreenState extends State<Drawers_Home> {
  final _advancedDrawerController = AdvancedDrawerController();

  bool fleche = false;

  @override
  void initState() {
    super.initState();
    fleche = false;
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,

        // Couleur a revoir
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [drawerColor, drawerColor.withOpacity(0.1)],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
     // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: Column(children: [
          Container(
            width: 128.0,
            height: 85.0,
            margin: const EdgeInsets.only(
              top: 35.0,
              bottom: 17.0,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Colors.black26,
              shape: BoxShape.circle,
            ),
            // child: Image.asset(
            //   'assets/images/flutter_logo.png',
            // ),
          ),
          Text(
            fasogaz,
            style: TextStyle(
              color: TilteLogoColor,
              fontSize: SizeIconLogin.width,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 15,
            color: BackgroundColor,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "Gérer votre boutique",
            style: TextStyle(
                color: BackColor, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: ListTileTheme(
              textColor: TilteLogoColor,
              iconColor: TilteLogoColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 08,
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        title = 'Ma boutique';
                      });

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Drawers_Home(
                                  title: "Ma boutique",
                                  body: const fonction_desboard())));
                      _advancedDrawerController.hideDrawer();
                    },
                    leading: const Icon(Icons.home_outlined),
                    title: Text(
                      'Accueil',
                      style: TextStyle(fontWeight: fontBold),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        title = "Gérer mon stock";
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Drawers_Home(
                              title: "Gérer mon stock",
                              body: stockbar(),
                            ),
                          ));

                      _advancedDrawerController.hideDrawer();
                    },
                    leading: const Icon(Icons.warehouse_outlined),
                    title:
                        Text('Stock', style: TextStyle(fontWeight: fontBold)),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        title = "Gérer mes commandes";
                      });
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Drawers_Home(body: Commande_screen())));

                      _advancedDrawerController.hideDrawer();
                    },
                    leading: const Icon(Icons.calendar_today_outlined),
                    title: Text('Commande',
                        style: TextStyle(fontWeight: fontBold)),
                  ),
                  ListTile(
                    onTap: () {
                       setState(() {
                        title = "";
                       });
                      _advancedDrawerController.hideDrawer();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Drawers_Home(body:  Contact())));
                    },
                    leading: const Icon(Icons.phone_android_outlined),
                    title:
                        Text('Contact', style: TextStyle(fontWeight: fontBold)),
                  ),

                  ListTile(
                    onTap: () {
                      setState(() {
                        title = "A propos";
                      });
                      _advancedDrawerController.hideDrawer();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const propos()));
                    },
                    leading: const Icon(Icons.account_balance_wallet_outlined),
                    title: Text('A Propos',
                        style: TextStyle(fontWeight: fontBold)),
                  ),
                  ListTile(
                    onTap: () {
                      setState(() {
                        title = "Paramètre";
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const parametre()));

                      _advancedDrawerController.hideDrawer();
                    },
                    leading: const Icon(Icons.settings_outlined),
                    title: Text('Paramètre',
                        style: TextStyle(fontWeight: fontBold)),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.output_rounded),
                    title: Text('Se deconnecter',
                        style: TextStyle(fontWeight: fontBold)),
                  ),
                  // DefaultTextStyle(
                  //   style: const TextStyle(
                  //     fontSize: 12,
                  //     color: Colors.white54,
                  //   ),
                  //   child: Container(
                  //     margin: const EdgeInsets.symmetric(
                  //       vertical: 16.0,
                  //     ),
                  //     child: const Text('Terms of Service | Privacy Policy'),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ]),
      ),

      child: Scaffold(
        appBar: AppBar(
          title: Text("$title"),
          titleSpacing: 40,
          automaticallyImplyLeading: fleche,
          actions: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: _handleMenuButtonPressed,
                icon: ValueListenableBuilder<AdvancedDrawerValue>(
                  valueListenable: _advancedDrawerController,
                  builder: (_, value, __) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      child: Icon(
                        value.visible ? Icons.clear : Icons.menu,
                        key: ValueKey<bool>(value.visible),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        body: widget.body,
      ),
    );
  }

  void _handleMenuButtonPressed() {
    setState(() {
      fleche = false;
    });
    _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
