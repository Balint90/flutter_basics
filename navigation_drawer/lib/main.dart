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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MY DRAWER',
          style: TextStyle(fontSize: 14),
        ),
        backgroundColor: const Color(0xff1D1E22),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _buildHeader(),
            _buildItem(
              icon: Icons.home_rounded,
              title: 'Home',
              onTap: () => Navigator.pop(context),
            ),
            _buildItem(
              icon: Icons.notifications_rounded,
              title: 'Notifications',
              onTap: () => Navigator.pushNamed(context, 'Notifications'),
            ),
            _buildItem(
              icon: Icons.person,
              title: 'Profile',
              onTap: () => Navigator.pushNamed(context, 'Profile'),
            ),
            _buildItem(
              icon: Icons.settings,
              title: 'Setting',
              onTap: () => Navigator.pushNamed(context, 'Setting'),
            )
          ],
        ),
      ),
    );
  }

  DrawerHeader _buildHeader() {
    return const DrawerHeader(
      decoration: BoxDecoration(
        color: Color(0xff1D1E22),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile-image.jpg'),
            radius: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Balint Csertan',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }

  _buildItem(
      {required IconData icon,
      required String title,
      required GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
      minLeadingWidth: 5,
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'PROFILE',
        style: TextStyle(fontSize: 14),
      ),
      backgroundColor: const Color.fromARGB(255, 17, 15, 65),
    ));
  }
}

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'NOTIFICATIONS',
        style: TextStyle(fontSize: 14),
      ),
      backgroundColor: const Color(0xff1D1E22),
    ));
  }
}
