import 'package:flutter/material.dart';
import 'package:plantapp/screen/bottom_nav_bar.dart';
import 'package:plantapp/screen/components/body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      title: const Text(''), 
      backgroundColor:
          const Color.fromARGB(255, 0, 221, 255),
      foregroundColor: Colors.black, 
    );
  }
}
