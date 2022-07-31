import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Numan Kaya"),
            accountEmail: Text("numankaya@gmail.com"),
            currentAccountPicture: Image.network(
                "https://upload.wikimedia.org/wikipedia/tr/thumb/e/e2/Bo%C4%9Fazi%C3%A7i_%C3%9Cniversitesi_Logo.png/640px-Bo%C4%9Fazi%C3%A7i_%C3%9Cniversitesi_Logo.png"),
            otherAccountsPictures: [
              CircleAvatar(
                child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/tr/thumb/e/e2/Bo%C4%9Fazi%C3%A7i_%C3%9Cniversitesi_Logo.png/640px-Bo%C4%9Fazi%C3%A7i_%C3%9Cniversitesi_Logo.png"),
              ),
              Image.network(
                  "https://upload.wikimedia.org/wikipedia/tr/thumb/e/e2/Bo%C4%9Fazi%C3%A7i_%C3%9Cniversitesi_Logo.png/640px-Bo%C4%9Fazi%C3%A7i_%C3%9Cniversitesi_Logo.png"),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Ana Sayfa"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text("Ara"),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Profil"),
                  trailing: Icon(Icons.chevron_right),
                ),
                Divider(),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.cyan,
                  child: ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text("Profil"),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
