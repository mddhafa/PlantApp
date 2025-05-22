import 'package:flutter/material.dart';

const double kDefaultPadding = 20.0;
const Color kPrimaryColor = Color(0xFF00DDFF);

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          RecomendPlantCard(
            image: "assets/images/produk1.jpg",
            title: "Tas Kerir",
            country: "Enim",
            price: 440,
          ),
          RecomendPlantCard(
            image: "assets/images/produk2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          RecomendPlantCard(
            image: "assets/images/produk3.jpg",
            title: "Angelo",
            country: "America",
            price: 440,
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
  });

  final String image, title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(color: kPrimaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
