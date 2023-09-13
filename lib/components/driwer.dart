import 'package:flutter/material.dart';

class Driwers extends StatelessWidget {
  const Driwers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.redAccent),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white10),
              accountName: Text("Baha"),
              accountEmail: Text("baha@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  'BJ',
                  style: TextStyle(fontSize: 26),
                ),
              ),
              currentAccountPictureSize: Size.square(50),
            ),
          ),
          const ListTile(
            title: Text(
              'Home Page',
              style: TextStyle(fontSize: 36),
            ),
            subtitle: Text('Acount'),
          ),
          const AboutListTile(
            icon: Icon(Icons.info),
            // ignore: sort_child_properties_last
            child: Text('About'),
            applicationIcon: Icon(Icons.account_circle),
            applicationName: "sabak_f18",
            applicationVersion: 'Quis App',
            applicationLegalese: 'Legales',
          ),
          ListTile(
            leading: const Icon(Icons.backspace),
            title: const Text(
              'Exit',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
