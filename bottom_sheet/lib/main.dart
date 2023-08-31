import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: MaterialButton(
        height: 50,
        minWidth: 200,
        color: const Color(0xff1D1E22),
        child: const Text(
          'Open',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {
          _displayBottomSheet(context);
        },
      ),
    ));
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      barrierColor: Colors.black.withOpacity(0.5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      builder: (context) => const SizedBox(
          height: 200,
          child: Center(
            child: Text(
              'Balint',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          )),
    );
  }
}
