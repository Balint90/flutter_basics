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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1D1E22),
          title: const Text('Tab bar example'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Row(
                children: [
                  Tab(icon: Icon(Icons.directions_car)),
                  SizedBox(width: 5),
                  Text('Car'),
                ],
              ),
              Row(
                children: [
                  Tab(icon: Icon(Icons.directions_transit)),
                  SizedBox(width: 5),
                  Text('Transit'),
                ],
              ),
              Row(
                children: [
                  Tab(icon: Icon(Icons.directions_bike)),
                  SizedBox(width: 5),
                  Text('Bike'),
                ],
              ),
              Row(
                children: [
                  Tab(icon: Icon(Icons.directions_boat)),
                  SizedBox(width: 5),
                  Text('Boat'),
                ],
              ),
              Row(
                children: [
                  Tab(icon: Icon(Icons.directions_railway)),
                  SizedBox(width: 5),
                  Text('Railway'),
                ],
              ),
              Row(
                children: [
                  Tab(icon: Icon(Icons.directions_bus)),
                  SizedBox(width: 5),
                  Text('Bus'),
                ],
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_car),
              SizedBox(height: 10),
              Text('Car'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_transit),
              SizedBox(height: 10),
              Text('Transit'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_bike),
              SizedBox(height: 10),
              Text('Bike'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_boat),
              SizedBox(height: 10),
              Text('Boat'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_railway),
              SizedBox(height: 10),
              Text('Railway'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.directions_bus),
              SizedBox(height: 10),
              Text('Bus'),
            ],
          ),
        ]),
      ),
    );
  }
}
