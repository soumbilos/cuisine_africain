// import 'package:faso_gaz/data/data.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class ChangePassword extends StatefulWidget {
//   const ChangePassword({super.key});
//
//   @override
//   State<ChangePassword> createState() => _NouveauMotDePasseState();
// }
//
// class _NouveauMotDePasseState extends State<ChangePassword> {
//   bool obscureText1 = true;
//   bool obscureText2 = true;
//   bool obscureText3 = true;
//
//   final TextEditingController _textController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox.fromSize(
//             size: const Size.fromHeight(30),
//           ),
//           const Padding(padding: EdgeInsets.all(10)),
//           const Text("Changer le mot de passe",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25.0,
//               ),
//               textAlign: TextAlign.center),
//           const SizedBox(
//             height: 5,
//           ),
//           Text(
//               "Veuillez entrer le même mot de passe \n dans les deux( 02) champs",
//               // a revoir
//               style: GoogleFonts.lato(
//                 textStyle: const TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//               textAlign: TextAlign.center),
//           const Padding(padding: EdgeInsets.only(top: 6)),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // mot de passe
//               PaddingSpace,
//               SizedBox(
//                 width: WithSizeContenaireTextFiedInput.width,
//                 height: WithSizeContenaireTextFiedInput.height,
//                 child: TextField(
//                   keyboardType: TextInputType.number,
//                   obscureText: obscureText1,
//                   enableInteractiveSelection: false,
//                   decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       hintText: "Votre ancien mot de passe",
//                       hintStyle:
//                           const TextStyle(color: Colors.black45, fontSize: 15),
//                       contentPadding:
//                           const EdgeInsets.symmetric(vertical: 10.0),
//                       border:
//                           OutlineInputBorder(borderRadius: BorderRaduisInput),
//                       prefixIcon: Container(
//                         width: WithSizeContenairIconInput.width,
//                         height: WithSizeContenairIconInput.height,
//                         margin: const EdgeInsets.only(right: 10.0),
//                         padding: const EdgeInsets.all(9.0),
//                         decoration: const BoxDecoration(
//                             color: Colors.black,
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         child: Transform.translate(
//                           offset: const Offset(-2, -5),
//                           child: const Icon(Icons.lock_outline,
//                               size: 23.0, color: Colors.white),
//                         ),
//                       ),
//                       suffixIcon: Transform.translate(
//                         offset: const Offset(0, -2.3),
//                         child: IconButton(
//                           icon: Icon(
//                             obscureText1
//                                 ? Icons.visibility_off
//                                 : Icons.visibility,
//                             color: Colors.black,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               obscureText1 = !obscureText1;
//                             });
//                           },
//                         ),
//                       )),
//                 ),
//               ),
//               PaddingSpace,
//               SizedBox(
//                 width: WithSizeContenaireTextFiedInput.width,
//                 height: WithSizeContenaireTextFiedInput.height,
//                 child: TextField(
//                   keyboardType: TextInputType.number,
//                   obscureText: obscureText1,
//                   enableInteractiveSelection: false,
//                   decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       hintText: "Votre nouveau mot de passe",
//                       hintStyle:
//                           const TextStyle(color: Colors.black45, fontSize: 15),
//                       contentPadding:
//                           const EdgeInsets.symmetric(vertical: 10.0),
//                       border:
//                           OutlineInputBorder(borderRadius: BorderRaduisInput),
//                       prefixIcon: Container(
//                         width: WithSizeContenairIconInput.width,
//                         height: WithSizeContenairIconInput.height,
//                         margin: const EdgeInsets.only(right: 10.0),
//                         padding: const EdgeInsets.all(9.0),
//                         decoration: const BoxDecoration(
//                             color: Colors.black,
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         child: Transform.translate(
//                           offset: const Offset(-2, -5),
//                           child: const Icon(Icons.lock_outline,
//                               size: 23.0, color: Colors.white),
//                         ),
//                       ),
//                       suffixIcon: Transform.translate(
//                         offset: const Offset(0, -2.3),
//                         child: IconButton(
//                           icon: Icon(
//                             obscureText1
//                                 ? Icons.visibility_off
//                                 : Icons.visibility,
//                             color: Colors.black,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               obscureText1 = !obscureText1;
//                             });
//                           },
//                         ),
//                       )),
//                 ),
//               ),
//
//               PaddingSpace,
//               SizedBox(
//                 width: WithSizeContenaireTextFiedInput.width,
//                 height: WithSizeContenaireTextFiedInput.height,
//                 child: TextField(
//                   keyboardType: TextInputType.number,
//                   obscureText: obscureText3,
//                   enableInteractiveSelection: false,
//                   decoration: InputDecoration(
//                       fillColor: Colors.white,
//                       filled: true,
//                       hintText: "Confirmer le nouveau mot de passe",
//                       hintStyle:
//                           const TextStyle(color: Colors.black45, fontSize: 15),
//                       contentPadding:
//                           const EdgeInsets.symmetric(vertical: 10.0),
//                       border:
//                           OutlineInputBorder(borderRadius: BorderRaduisInput),
//                       prefixIcon: Container(
//                         width: WithSizeContenairIconInput.width,
//                         height: WithSizeContenairIconInput.height,
//                         margin: const EdgeInsets.only(right: 10.0),
//                         padding: const EdgeInsets.all(9.0),
//                         decoration: const BoxDecoration(
//                             color: Colors.black,
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         child: Transform.translate(
//                           offset: const Offset(-2, -5),
//                           child: const Icon(Icons.lock_outline,
//                               size: 23.0, color: Colors.white),
//                         ),
//                       ),
//                       suffixIcon: Transform.translate(
//                         offset: const Offset(0, -2.3),
//                         child: IconButton(
//                           icon: Icon(
//                             obscureText3
//                                 ? Icons.visibility_off
//                                 : Icons.visibility,
//                             color: Colors.black,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               obscureText3 = !obscureText3;
//                             });
//                           },
//                         ),
//                       )),
//                 ),
//               ),
//
//               SizedBox.fromSize(
//                 size: const Size.fromHeight(30),
//               ),
//
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   ElevatedButton(
//                     onPressed: null,
//                     style: ButtonStyle(
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                             side: const BorderSide(color: Colors.black),
//                           ),
//                         ),
//                         minimumSize: MaterialStateProperty.all(const Size(
//                             100, 40)), // Ajustez la taille selon vos besoins
//                         backgroundColor:
//                             MaterialStatePropertyAll(Red_transparent)),
//                     // Remplacez null par la fonction à exécuter lorsqu'on appuie sur le bouton
//                     child: const Text(
//                       "Annuler",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   ElevatedButton(
//                     onPressed: null,
//                     style: ButtonStyle(
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                             side: const BorderSide(color: Colors.black),
//                           ),
//                         ),
//                         minimumSize: MaterialStateProperty.all(const Size(
//                             100, 40)), // Ajustez la taille selon vos besoins
//                         backgroundColor: MaterialStateProperty.all<Color>(
//                             const Color(0xff48da00))),
//                     child: const Text(
//                       "Valider",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   )
//                 ],
//               ),
//               SizedBox.fromSize(
//                 size: const Size.fromHeight(30),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
