import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/highlight_item.dart';

class Higtlights extends StatelessWidget {
  const Higtlights({super.key});

  final List items = destaques;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: Text(
              "Destaques",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Caveat",
                fontSize: 32,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return HighlightItem(
                  imageURI: items[index]["image"],
                  itemTitle: items[index]["name"],
                  itemPrice: items[index]["price"],
                  itemDescription: items[index]["description"],
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
