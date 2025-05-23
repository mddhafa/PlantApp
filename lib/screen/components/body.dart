import 'package:flutter/material.dart';
import 'featurred_plants.dart';
import 'package:plantapp/screen/components/header_with_searchbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

const double kDefaultPadding = 20.0;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
