import 'package:flutter/material.dart';
import 'package:kasir_super/core/core.dart';

part 'sections/filter_section.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaksi')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: const _FilterSection(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(Dimens.defaultSize),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: const ListTile(
                          title: Text(
                            'Tunai - TRX-100-10102030405',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Rp 125.000',
                            style: TextStyle(color: Colors.green),
                          ),
                          trailing: Text('24 Jan 2021 - 11:02'),
                        ),
                      ),
                      Dimens.dp8.height,
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: const ListTile(
                          title: Text(
                            'Kartu Kredit - TRX-101-10102030405',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Rp 200.000',
                            style: TextStyle(color: Colors.green),
                          ),
                          trailing: Text('25 Jan 2021 - 12:00'),
                        ),
                      ),
                      Dimens.dp8.height,
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: const ListTile(
                          title: Text(
                            'Transfer Bank - TRX-102-10102030405',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Rp 300.000',
                            style: TextStyle(color: Colors.green),
                          ),
                          trailing: Text('26 Jan 2021 - 13:00'),
                        ),
                      ),
                      Dimens.dp8.height,
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: const ListTile(
                          title: Text(
                            'E-Wallet - TRX-103-10102030405',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Rp 400.000',
                            style: TextStyle(color: Colors.green),
                          ),
                          trailing: Text('27 Jan 2021 - 14:00'),
                        ),
                      ),
                      Dimens.dp8.height,
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: const ListTile(
                          title: Text(
                            'Kas - TRX-104-10102030405',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Rp 500.000',
                            style: TextStyle(color: Colors.green),
                          ),
                          trailing: Text('28 Jan 2021 - 15:00'),
                        ),
                      ),
                      Dimens.dp8.height,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
