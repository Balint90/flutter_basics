import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _dropdownValue = '1';

  final _items = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          height: 80,
          decoration: BoxDecoration(
            color: const Color(0xffEBEDFE),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: DropdownButton(
              items: _items.map((String item) {
                return DropdownMenuItem(value: item, child: Text(item));
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  _dropdownValue = value!;
                });
              },
              value: _dropdownValue,
              borderRadius: BorderRadius.circular(10),
              icon: const Icon(Icons.keyboard_arrow_down),
              iconSize: 50,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
              underline: Container(),
            ),
          ),
        ),
      ),
    );
  }
}
