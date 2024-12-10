import 'package:flutter/material.dart';
import 'package:kasir_super/core/core.dart';

part 'sections/item_section.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Produk')),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white[50], // Background color for the AppBar
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Shadow color
                spreadRadius: 1, // Spread radius of the shadow
                blurRadius: 3, // Blur radius of the shadow
                offset: Offset(0, 2), // Offset for the shadow
              ),
            ],
          ),
          child: AppBar(
            title: const Text('Produk'),
            backgroundColor:
                Colors.transparent, // Make AppBar background transparent
            elevation: 0, // Remove default elevation
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(Dimens.defaultSize),
            child: SubtitleText('3 Produk'),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return const _ItemSection();
              }),
              separatorBuilder: (context, index) {
                return Dimens.dp16.height;
              },
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}
