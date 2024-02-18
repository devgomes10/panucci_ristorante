import 'package:flutter/material.dart';
import 'package:panucci_ristorante/components/food_item.dart';

import '../cardapio.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({super.key});

  final List items = comidas;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: Text(
              "Menu",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Caveat",
                fontSize: 32,
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                return FoodItem(
                  itemTitle: items[index]["name"],
                  itemPrice: items[index]["price"],
                  imageURI: items[index]["image"],
                );
              },
              childCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}
