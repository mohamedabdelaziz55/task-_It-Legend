import 'package:flutter/material.dart';
import 'package:task_it/features/home/presentation/widgets/product_card.dart';
import '../../data/dummy_data/dummy_products.dart';

class ProductsGrid extends StatelessWidget {
  final String selectedOffer;
  const ProductsGrid({super.key, this.selectedOffer = "كل العروض"});

  @override
  Widget build(BuildContext context) {
    final filteredProducts = dummyProducts
        .where((product) => product.offers.contains(selectedOffer))
        .toList();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: filteredProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) =>
            ProductCard(product: filteredProducts[index]),
      ),
    );
  }
}