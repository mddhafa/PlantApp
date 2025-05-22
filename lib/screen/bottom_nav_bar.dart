import 'package:flutter/material.dart';
import 'package:plantapp/screen/getimage/homepage.dart';
import 'package:plantapp/screen/getlocation/locationservice.dart';

const double kDefaultPadding = 20.0;
const Color kPrimaryColor = Color(0xFF00DDFF);

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: const Icon(Icons.home), onPressed: () {}),
          IconButton(
            icon: const Icon(Icons.camera),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.location_on),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mapspage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
