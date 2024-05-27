import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Components/data.dart';
import 'Create_Shop_PassWord.dart';

class Create_Shop extends StatefulWidget {
  const Create_Shop({super.key});

  @override
  State<Create_Shop> createState() => _Create_ShopState();
}

class _Create_ShopState extends State<Create_Shop> {
  @override
  void initState() {

    super.initState();
     error_number= "";
     error_text_name = "";
    error_shop_name = "";
     error_adress_mail = "";
     error_direction = "";
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox.fromSize(
                size: const Size(0, 40),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45, bottom: 20),
                child: Center(
                  child: Column(children: [
                    Center(
                      child: Text(
                        fasogaz,
                        style: TextStyle(
                            color: TilteLogoColor,
                            fontSize: TextFontSize.height,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Center(
                      child: Text(
                        "Créer votre Boutique",
                        style: TextStyle(
                            color: TextRedColor,
                            fontSize: TextFontSize.height - 8,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Inscription',
                      style: TextStyle(
                          color: TilteLogoColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w800),
                    )
                  ]),
                ),
              ),
              Expanded(
                child: Form(
              //    key: GblobalKey,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nom et Prénom",
                              style: TextStyle(
                                color: TilteLogoColor,
                                fontWeight: FontWeight.w800,
                                fontSize: FontSize.height,
                              ),
                            ),
                            SizedBox(
                              height: SpaceBetweenInputCreate_ShopAndIndicatorForInput.width,
                            ),
                            SizedBox(
                              width: WithSizeContenaireTextFiedInput.width,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: FontSize.height,
                                    fontWeight: FontWeight.normal),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                       horizontal: 15),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  hintText: "Ex : Zongo Salif Wendyame",
                                  hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: SpaceBetweenInputCreate_ShopAndIndicatorForInput.height,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nom de votre boutique",
                              style: TextStyle(
                                  color: TilteLogoColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: FontSize.height),
                            ),
                            SizedBox(
                              height: SpaceBetweenInputCreate_ShopAndIndicatorForInput.width,
                            ),
                            SizedBox(
                              width: WithSizeContenaireTextFiedInput.width,

                              child: TextFormField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: FontSize.height,
                                    fontWeight: FontWeight.normal),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 15),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  hintText: "Ex : Alimatation le grand tour",
                                  hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: SpaceBetweenInputCreate_ShopAndIndicatorForInput.height,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Numéro de téléphone",
                              style: TextStyle(
                                  color: TilteLogoColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: FontSize.height),
                            ),
                            SizedBox(
                              height: SpaceBetweenInputCreate_ShopAndIndicatorForInput.width,
                            ),
                            SizedBox(
                              width: WithSizeContenaireTextFiedInput.width,
                              child: TextFormField(
                                textAlign: TextAlign.start,
                                inputFormatters: [CustomNumberInputFormatter()],
                                decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    filled: true,
                                    hintText: "Ex : 75 00 00 00",
                                    hintStyle: const TextStyle(
                                        color: Colors.grey,
                                        fontStyle: FontStyle.italic),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: SpaceBetweenInputCreate_ShopAndIndicatorForInput.height,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Votre Adresse",
                              style: TextStyle(
                                  color: TilteLogoColor,
                                  fontWeight: FontWeight.w800,
                                  fontSize: FontSize.height),
                            ),
                            SizedBox(
                              height: SpaceBetweenInputCreate_ShopAndIndicatorForInput.width,
                            ),
                            SizedBox(
                              width: WithSizeContenaireTextFiedInput.width,
                              child: TextField(
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                horizontal: 15),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  hintText: "Ex : Koudougou secteur 8",
                                  hintStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: SpaceBetweenInputCreate_ShopAndIndicatorForInput.height,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Indication de la boutique",
                             style: TextStyle(
                                 color: TilteLogoColor,
                                 fontWeight: FontWeight.w800,
                                 fontSize: FontSize.height),
                           ),
                           SizedBox(height: SpaceBetweenInputCreate_ShopAndIndicatorForInput.width,),
                           SizedBox(
                             width: WithSizeContenaireTextFiedInput.width,
                             child: TextField(
                               keyboardType: TextInputType.text,
                               maxLines: 2,
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: FontSize.height,
                                   fontWeight: FontWeight.normal),
                               decoration: InputDecoration(
                                 fillColor: Colors.white,
                                 filled: true,

                                 contentPadding: const EdgeInsets.symmetric(vertical: 14,
                                     horizontal: 15),
                                 border: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(12)),
                                 hintText:
                                 "Ex : 200m de la caserne des sapeur pompier en partant vers l'université a droit,",
                                 hintStyle: const TextStyle(
                                     color: Colors.grey,
                                     fontStyle: FontStyle.italic),
                               ),
                             ),
                           ),
                         ],
                       ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  fixedSize:
                                      MaterialStateProperty.all(const Size(130, 20)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRaduisInput)),
                                  backgroundColor: const MaterialStatePropertyAll(
                                      Color(0xffa60606))),
                              child: const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Annuler",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                                onPressed: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Create_Shop_PassWord()));

                                },
                              style: ButtonStyle(
                                  fixedSize:
                                      MaterialStateProperty.all(const Size(140, 20)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRaduisInput)),
                                  backgroundColor:
                                      MaterialStatePropertyAll(OkColor)),
                              child: const Row(
                                children: <Widget>[
                                  Text(
                                    "Continuer",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 9)),
                                  Icon(
                                    Icons.east_outlined,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ));
  }
}

class CustomNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text.replaceAll(RegExp(r'\s'), '');
    String newText = '';
    for (int i = 0; i < text.length; i++) {
      if (i > 0 && i % 2 == 0) {
        newText += ' ';
      }
      newText += text[i];
    }
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
