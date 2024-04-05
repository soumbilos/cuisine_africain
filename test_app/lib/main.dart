import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool _isChecked1 = false;
  bool _isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:ListView(
        children: [
          ListTile(
            leading: Checkbox(
              value: _isChecked1,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked1 = value!;
                });
              },
            ),
            title: Text('Tâche 1'),
            subtitle: Text('Description de la tâche 1'),
            onTap: () {
              setState(() {
                _isChecked1 = !_isChecked1;
              });
            },
          ),
          ListTile(
            leading: Checkbox(
              value: _isChecked2,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked2 = value!;
                });
              },
            ),
            title: Text('Tâche 2'),
            subtitle: Text('Description de la tâche 2'),
            onTap: () {
              setState(() {
                _isChecked2 = !_isChecked2;
              });
            },
          ),
        ],
      ),

    );
  }
}
