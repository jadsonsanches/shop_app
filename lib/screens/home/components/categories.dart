import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

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
    'Pants',
    'Clothes'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
          height: 25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, i) => buildCategory(i))),
    );
  }

  Widget buildCategory(int i) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = i;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[i],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == i ? kTextColor : kTextLightColor),
              ),
              Container(
                height: 2,
                width: 30,
                color: selectedIndex == i ? Colors.black : Colors.transparent,
                margin: EdgeInsets.only(top: kDefaultPadding / 4),
              )
            ],
          ),
        ),
      );
}
