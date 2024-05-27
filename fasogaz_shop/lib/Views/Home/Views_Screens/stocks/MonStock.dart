import 'package:flutter/material.dart';

class MonStock extends StatelessWidget {
  final String type;
  final int poids;
  final int qte_total;
  final int qte_livrer;
  final int qte_reste;
  const MonStock(
      {Key? key,
      required this.type,
      required this.poids,
      required this.qte_total,
      required this.qte_livrer,
      required this.qte_reste})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Table(
            border: TableBorder.all(width: 1),
            columnWidths: const {
              0: FixedColumnWidth(115.0),
              1: FixedColumnWidth(72.0),
              2: FixedColumnWidth(66.0),
              3: FixedColumnWidth(66.0),

            },
            children: [
              TableRow(
                decoration: BoxDecoration(color: Colors.grey[300]),
                children: const [
                  TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Type',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  )),
                  TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Nombre total',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  )),
                  TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Livré',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  )),
                  TableCell(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Reste',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  )),

                ],
              ),
              buildRow('$type $poids kg', '$qte_total', '$qte_livrer',
                  '$qte_reste',),
            ],
          ),
        ),
      ),
    );
  }

  TableRow buildRow(String type, String total, String delivered,
      String remaining) {
    return TableRow(
      children: [
        TableCell(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(type),
        )),
        TableCell(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(total),
        )),
        TableCell(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(delivered),
        )),
        TableCell(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(remaining),
        )),

      ],
    );
  }
}
