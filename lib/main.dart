import 'package:alti/ui/ana_sayfa.dart';
import 'package:alti/ui/arama.dart';
import 'package:alti/ui/drawer_menu.dart';
import 'package:alti/ui/kisisel_font_kullanimi.dart';
import 'package:alti/ui/page_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.orangeAccent,
      ),
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int secilenMenuItem = 0;
  late List<Widget> tumSayfalar;
  late Anasayfa sayfaAna;
  late AramaSayfasi sayfaArama;
  late PageViewOrnek pageViewOrnek;

  var keyAnaSayfa = PageStorageKey("Key_Ana_Sayfa");
  var keyArama = PageStorageKey("Key_Arama_Sayfa");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaAna = Anasayfa(keyAnaSayfa);
    sayfaArama = AramaSayfasi(keyArama);
    pageViewOrnek = PageViewOrnek();
    tumSayfalar = [sayfaAna, sayfaArama, pageViewOrnek];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: secilenMenuItem <= tumSayfalar.length - 1
          ? tumSayfalar[secilenMenuItem]
          : tumSayfalar[0],
      bottomNavigationBar: bottomNavMenu(),
    );
  }

  Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.cyan,
        primaryColor: Colors.orangeAccent,
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Anasayfa",
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Anasayfa",
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Anasayfa",
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Anasayfa",
              backgroundColor: Colors.blueGrey),
        ],
        type: BottomNavigationBarType.fixed,
        //type: BottomNavigationBarType.shifting,
        currentIndex: secilenMenuItem,
        onTap: (index) {
          setState(() {
            secilenMenuItem = index;
          });
        },
      ),
    );
  }
}
