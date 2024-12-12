import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
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
          child: AppBar(
            title: const Text('Settings'),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const ListTile(
            title: Text(
              'Akun',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.business, color: Colors.black),
            title: Text('Informasi Usaha'),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          const ListTile(
            leading: Icon(Icons.vpn_key, color: Colors.black),
            title: Text('API Key Xendit'),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          const Divider(height: 20),
          const ListTile(
            title: Text(
              'Perangkat Tambahan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.print, color: Colors.black),
            title: Text('Printer'),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          const ListTile(
            leading: Icon(Icons.receipt, color: Colors.black),
            title: Text('Atur Struk'),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          const Divider(height: 20),
          const ListTile(
            title: Text(
              'Info Lainnya',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.privacy_tip, color: Colors.black),
            title: Text('Kebijakan Privasi'),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          const ListTile(
            leading: Icon(Icons.star, color: Colors.black),
            title: Text('Beri Rating'),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
              child: const Text(
                'Keluar',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}