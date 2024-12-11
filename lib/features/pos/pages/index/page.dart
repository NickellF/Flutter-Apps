import 'package:flutter/material.dart';
import 'package:kasir_super/core/core.dart';

class POSPage extends StatelessWidget {
  const POSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white[50],
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), 
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: AppBar(
            title: const Text('POS'),
            backgroundColor:
                Colors.transparent, 
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
