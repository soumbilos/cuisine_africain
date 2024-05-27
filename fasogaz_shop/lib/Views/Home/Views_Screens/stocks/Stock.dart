import 'package:fasogaz_shop/Views/Home/Drawers_Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../Components/data.dart';
import '../livreur/livreur.dart';
import 'MonStock.dart';

class stockbar extends StatefulWidget {
  late PageController _pageViewController;

  stockbar({Key? key}) : super(key: key) {
    _pageViewController = PageController();
  }

  @override
  State<stockbar> createState() => _stockbarState();
}

class _stockbarState extends State<stockbar> {
  Color Black = const Color(0xFF000000);
  Color Red = const Color(0xffc70606);
  late Color couleur;
  late Color couleur1;
  late Color couleur2;
  late Color couleur3;

  @override
  void initState() {
    super.initState();
    couleur = Red;
    couleur1 = Black;
    couleur2 = Black;
    couleur3 = Black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 80),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    _updateCurrentPageIndex(0);
                    setState(() {
                      couleur = Red;
                      couleur1 = Black;
                      couleur2 = Black;
                      couleur3 = Black;
                    });
                  },
                  child: Text(
                    'Mon stock',
                    style: TextStyle(color: couleur, fontWeight: fontBold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _updateCurrentPageIndex(1);
                    setState(() {
                      couleur = Black;
                      couleur1 = Red;
                      couleur2 = Black;
                      couleur3 = Black;
                    });
                  },
                  child: Text('Commande',
                      style: TextStyle(color: couleur1, fontWeight: fontBold)),
                ),
                TextButton(
                  onPressed: () {
                    _updateCurrentPageIndex(2);
                    setState(() {
                      couleur = Black;
                      couleur1 = Black;
                      couleur2 = Red;
                      couleur3 = Black;
                    });
                  },
                  child: Text('Livreur',
                      style: TextStyle(color: couleur2, fontWeight: fontBold)),
                ),
              ],
            ),
          ),
        ],
      ),
      body: PageViewMenu(pageViewController: widget._pageViewController),
      floatingActionButton: FloatingActionButton(onPressed: null,child: Icon(CupertinoIcons.news),),

    );
  }

  void _updateCurrentPageIndex(int index) {
    widget._pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}

class PageViewMenu extends StatefulWidget {
  final PageController pageViewController;

  const PageViewMenu({Key? key, required this.pageViewController})
      : super(key: key);

  @override
  State<PageViewMenu> createState() => _PageViewMenuState();
}

class _PageViewMenuState extends State<PageViewMenu>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.bottomCenter,
      child: PageView(
        controller: widget.pageViewController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: _handlePageViewChanged,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: MonStock(
                type: "SODIGAZ",
                poids: 12,
                qte_total: 800,
                qte_livrer: 600,
                qte_reste: 200,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  for (int i = 0; i <= 3; i++) const CardsStock(),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: CardsLivreur(),
            ),
          ),
        ],
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    if (!_isOnDesktopAndWeb) {
      return;
    }
    _tabController.index = currentPageIndex;
    setState(() {
      _currentPageIndex = currentPageIndex;
    });
  }

  void _updateCurrentPageIndex(int index) {
    _tabController.index = index;
    widget.pageViewController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  bool get _isOnDesktopAndWeb {
    if (kIsWeb) {
      return true;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.macOS:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return true;
      case TargetPlatform.android:
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
        return false;
    }
  }
}

class CardsStock extends StatefulWidget {
  const CardsStock({
    Key? key,
  }) : super(key: key);
  @override
  State<CardsStock> createState() => _CardsStockState();
}

class _CardsStockState extends State<CardsStock> {
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
