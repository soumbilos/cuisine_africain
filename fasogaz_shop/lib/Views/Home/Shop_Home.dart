import 'dart:ui';
import 'package:fasogaz_shop/Views/Home/home_fonctionnaliter/vendu.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fasogaz_shop/Components/data.dart';
import 'Views_Screens/commande/commande.dart';
import 'home_fonctionnaliter/ajouter.dart';
import 'home_fonctionnaliter/article.dart';
import 'home_fonctionnaliter/navigationBoutton.dart';
import 'home_fonctionnaliter/publier.dart';

class ShopHome extends StatefulWidget {
  late PageController _pageViewController;

  ShopHome({Key? key}) : super(key: key) {
    _pageViewController = PageController();
  }

  @override
  State<ShopHome> createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ajouter()),
              );
            },
            backgroundColor: Colors.red,
            child: const Icon(Icons.add, size: 40, color: Colors.white),
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 10),
            child: Row(
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
                    'Mes Articles',
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
                  child: Text('Publié',
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
                  child: Text('Vendu',
                      style: TextStyle(color: couleur2, fontWeight: fontBold)),
                ),
                TextButton(
                  onPressed: () {
                    _updateCurrentPageIndex(3);
                    setState(() {
                      couleur = Black;
                      couleur1 = Black;
                      couleur2 = Black;
                      couleur3 = Red;
                    });
                  },
                  child: Text('Commandes',
                      style: TextStyle(color: couleur3, fontWeight: fontBold)),
                ),
              ],
            ),
          ),
        ],
      ),
      body: PageViewMenu(pageViewController: widget._pageViewController),
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
      height: MediaQuery.of(context)
          .size
          .height,
      alignment: Alignment.bottomCenter,
      child: PageView(
        controller: widget.pageViewController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: _handlePageViewChanged,
        children: const <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child:
                  // BottomNavigation(),
                  SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Article(),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Publier(),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Vendu(),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Commande_screen(),
              ),
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
