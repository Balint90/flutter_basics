import 'package:flutter/material.dart';

void main() {
  runApp(const BottomTabs());
}

class BottomTabs extends StatelessWidget {
  const BottomTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [],
      ),
    );
  }
}
