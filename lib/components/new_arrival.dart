import 'package:flutter/material.dart';
import 'package:stylish/components/product_card.dart';
import 'package:stylish/components/section_title.dart';
import 'package:stylish/screens/details_screen.dart';

import '../constants.dart';
import '../models/product.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demoProduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demoProduct[index].image,
                  title: demoProduct[index].title,
                  price: demoProduct[index].price,
                  bgColor: demoProduct[index].bgColor,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: demoProduct[index],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
