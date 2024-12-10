import 'package:flutter/material.dart';
import 'package:kasir_super/core/core.dart';
import 'package:kasir_super/features/home/home.dart';
import 'package:kasir_super/features/pos/pages/pages.dart';
import 'package:kasir_super/features/product/pages/pages.dart';
import 'package:kasir_super/features/settings/settings.dart';
import 'package:kasir_super/features/transaction/pages/pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const routeName = '/home';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final pages = const <Widget>[
    HomePage(),
    TransactionPage(),
    POSPage(),
    ProductPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.white[50], // Background color for the BottomNavigationBar
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Less shadow color
              spreadRadius: 1, // Spread radius of the shadow
              blurRadius: 3, // Blur radius of the shadow
              offset: Offset(0, -2), // Offset for the shadow (upward)
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icomoon.Home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icomoon.Receipt),
              label: 'Transaksi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icomoon.POS),
              label: 'POS',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icomoon.Product),
              label: 'Produk',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icomoon.Settings),
              label: 'Lainnya',
            ),
          ],
        ),
      ),
    );
  }
}