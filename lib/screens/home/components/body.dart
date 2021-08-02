import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
      ],
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Hand Bag',
    'Jewellery',
    'Footwear',
    'Dresses',
    'Pants'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, i) => buildCategory(i)));
  }

  Widget buildCategory(int i) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Text(
          categories[i],
          style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
        ),
      );
}
