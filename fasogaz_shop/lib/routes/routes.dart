/*

import 'package:faso_gaz/view/BasePage/MarketPlace/ProductInfoView.dart';
import 'package:faso_gaz/routes/middlewares/AuthMiddleware.dart';
import 'package:faso_gaz/view/BasePage/Favourite.dart';
import 'package:faso_gaz/view/BasePage/HomePage/payment/ChoosePaymentMethod.dart';
import 'package:faso_gaz/view/BasePage/HomePage/payment/orangeMoney.dart';
import 'package:faso_gaz/view/BasePage/MarketPlace/MaketPlace.dart';
import 'package:faso_gaz/view/BasePage/settings.dart';
import 'package:qlevar_router/qlevar_router.dart';

import '../view/BasePage/BasePage.dart';
import '../view/BasePage/HomePage/HomePage.dart';
import '../view/Authentification/login.dart'    deferred as lg;
import '../view/Authentification/ChangePassword.dart'    deferred as changepass;
import 'package:flutter//home/nimppo/StudioProjects/fasogaz_shop/lib/Views/Create_Shop/Create_Shop.dart'    deferred as createAcc;
import 'package:flutter//home/nimppo/StudioProjects/fasogaz_shop/lib/Views/Create_Shop/Create_Shop_PassWord.dart';
import 'package:flutter//home/nimppo/StudioProjects/fasogaz_shop/lib/Views/Create_Shop/End_Of_Create_sho.dart';
import '../view/BasePage/HomePage/viewShopDetail/booking/Booking.dart';
import 'package:flutter//home/nimppo/StudioProjects/fasogaz_shop/lib/Views/Start.dart' deferred as st;
import '../view/BasePage/HomePage/viewShopDetail/booking/bookingConfirm.dart';
import '../view/BasePage/HomePage/viewShopDetail/ViewShopDetail.dart';
import '../view/BasePage/HomePage/Drawer/index.dart';
import 'middlewares/deferred_loader.dart';


class Routes {

  static const String home = "home";
  static const String start = "start";
  static const String login = "login";
  static const String changePassword = "changePassword";
  static const String createAccount = "createAccount";
  static const String viewShopDetail  = "viewDetail";
  static const String booking = "booking";
  static const String bookingconfirmation = "booking-confirmation";
  static const String payment = "payment";
  static const String  orangePay = "orangePay";
  static const String about = "about";

  static const String bookingList = "bookingList";
  static const String contacts = "contacts";
  static const String createShop = "createShop";
  static const String history = "history";
  static const String userProfile = "userProfile";
  static const String favorite = "favorite";
  static const String market = "market";
  static const   settings = "settings";
  static const infoView  = "productinfoview";

  static const acceuilSet = {home,viewShopDetail,booking,bookingList,bookingconfirmation};

  static  void setup(){
    QR.settings.pagesType = const QFadePage();
  }
  static final routes = <QRoute>[

    QRoute.withChild(
        path: '/home',
        builderChild: (c) => BasePage(c),
        middleware: [
          AuthMiddleware(),
        ],
        children: [
          QRoute(
              name: home,
              path: '/homepage',
              builder: () => const HomePage(),
              children: [
                QRoute(
                  name: viewShopDetail,
                  path: '/viewShopDetail/:id',
                  builder: () => ViewShopDetail(shopId: QR.params['id'].toString(),),
  middleware: [
        DefferedLoader(setup.loadLibrary),
      ],

                ),
                QRoute(
                  name: booking,
                  path: '/$viewShopDetail/:id/booking',
                  builder: () => Booking(shopId: QR.params['id'].toString(),),
  middleware: [
        DefferedLoader(setup.loadLibrary),
      ],

                ),
                QRoute(
                  name: bookingconfirmation,
                  path: '/$viewShopDetail/:id/confirm-booking',
                  builder: () => BookingConfirm(shopId: QR.params['id'].toString(),),
  middleware: [
        DefferedLoader(setup.loadLibrary),
      ],

                ),
                QRoute(
                  name: payment,
                  path: '/$viewShopDetail/pay/:id',
                  builder: () => ChoosePaymentMethod(shopId: QR.params['id'].toString(),),
  middleware: [
        DefferedLoader(setup.loadLibrary),
      ],

                ),
                QRoute(
                  name: orangePay,
                  path: '/orange/:id',
                  builder: () => OrangeMoney(shopId: QR.params['id'].toString(),),
  middleware: [
        DefferedLoader(setup.loadLibrary),
      ],

                ),
                QRoute(
                  name: bookingList,
                  path: '/$bookingList',
                  builder: () => const BookingList(),
                  middleware: [
                    // DefferedLoader(gress.loadLibrary),
                  ],
                ),
              ]
          ),
          QRoute(
            name: favorite,
            path: '/favorite',
            builder: () => Favourite(),
          ),
          QRoute(
              name: market,
              path: '/market',
              builder: () => const MarketPlace(),
              children: [
                QRoute(
                    name:  infoView,
                    path: "/ProductInfo/:id",
                    builder: () =>  ProductInfoView(id : QR.params['id'].toString(),)
                )
              ]
          ),
          QRoute(
            name: settings,
            path: '/settings',
            builder: () =>  const Settings(),
          ),


          QRoute(
            name: contacts,
            path: '/$contacts',
            builder: () => const Contacts(),
middleware: [
        DefferedLoader(gal.loadLibrary),
      ],

          ),
          QRoute(
            name: about,
            path: '/$About',
            builder: () => const About(),
  middleware: [
        DefferedLoader(insta.loadLibrary),
      ],

          ),

          QRoute(
            name: createShop,
            path: '/$createShop',
            builder: () => const CreateShop(),
 middleware: [
        DefferedLoader(disp.loadLibrary),
      ],

          ),
          QRoute(
            name: history,
            path: '/$history',
            builder: () =>  const History(),
 middleware: [
        DefferedLoader(disp.loadLibrary),
      ],

          ),
          QRoute(
            name: userProfile,
            path: '/$userProfile',
            builder: () =>  const UserProfile(),
 middleware: [
        DefferedLoader(disp.loadLibrary),
      ],

          ),


        ]),

    QRoute(
      name: start,
      path: '/start',
      builder: () => st.Start(),
      middleware: [
        DefferedLoader(st.loadLibrary),
      ],
    ),

    QRoute(
      name: login,
      path: '/login',
      builder: () => lg.Login(),
      middleware: [
        DefferedLoader(lg.loadLibrary),
      ],
    ),

    QRoute(
      name: createAccount,
      path: '/createAccount',
      builder: () => createAcc.CreateAccount(),
      middleware: [
        DefferedLoader(createAcc.loadLibrary),
      ],
    ),


  ];
}
*/
