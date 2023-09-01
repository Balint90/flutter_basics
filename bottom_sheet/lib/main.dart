import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            height: 50,
            minWidth: 200,
            color: const Color(0xff1D1E22),
            child: const Text(
              'Open Animated Dialog',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              _openAnimatedDialog(context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
            height: 50,
            minWidth: 200,
            color: const Color(0xff1D1E22),
            child: const Text(
              'Open Bottom Sheet',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {
              _displayBottomSheet(context);
            },
          ),
        ],
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

  void _openAnimatedDialog(BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (context, animation, secondaryAnimation) {
          return Container();
        },
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return ScaleTransition(
            scale: Tween<double>(begin: 0.5, end: 1.0).animate(animation),
            child: AlertDialog(
              title: const Text('Hello'),
              content: const Text('I am a Dialog'),
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
                borderSide: BorderSide.none,
              ),
            ),
          );
        });
  }
}
