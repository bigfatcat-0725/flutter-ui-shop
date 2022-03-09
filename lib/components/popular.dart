import 'package:flutter/material.dart';
import 'package:stylish/components/product_card.dart';
import 'package:stylish/components/section_title.dart';
import '../constants.dart';
import '../models/product.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "Popular",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoProduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  image: demoProduct[index].image,
                  title: demoProduct[index].title,
                  price: demoProduct[index].price,
                  bgColor: demoProduct[index].bgColor,
                  press: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
