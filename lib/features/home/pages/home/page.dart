import 'package:flutter/material.dart';
import 'package:kasir_super/core/core.dart';

part 'sections/card_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white[50], // Background color for the AppBar
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2), // Shadow color
                spreadRadius: 2, // Spread radius of the shadow
                blurRadius: 5, // Blur radius of the shadow
                offset: Offset(0, 2), // Offset for the shadow
              ),
            ],
          ),
          child: AppBar(
            title: const Text('Beranda'),
            backgroundColor: Colors.transparent, // Make AppBar background transparent
            elevation: 0, // Remove default elevation
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Dimens.defaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _CardSection(
              title: 'Total Penjualan',
              value: 'Rp 0',
            ),
            Dimens.defaultSize.height,
            const _CardSection(
              title: 'Total Transaksi',
              value: 'Rp 0',
            ),
            Dimens.defaultSize.height,
            const _CardSection(
              title: 'Total Produk',
              value: '0',
            ),
          ],
        ),
      ),
    );
  }
}