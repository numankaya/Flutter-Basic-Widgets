import 'package:alti/models/veri.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  Anasayfa(Key k) : super(key: k);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  late List<Veri> tumVeriler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumVeriler = [
      Veri("Biz Kimiz", "Biz kimizin icerigi buraya gelecek", false),
      Veri("Biz Neredeyiz", "Biz kimizin icerigi buraya gelecek", false),
      Veri("Misyon", "Biz kimizin icerigi buraya gelecek", false),
      Veri("Vizyon", "Biz kimizin icerigi buraya gelecek", false),
      Veri("Biz Kimiz", "Biz kimizin icerigi buraya gelecek", false),
      Veri("Biz Kimiz", "Biz kimizin icerigi buraya gelecek", false),
      Veri("Biz Kimiz", "Biz kimizin icerigi buraya gelecek", false),
      Veri("Biz Kimiz", "Biz kimizin icerigi buraya gelecek", false),
      Veri("Biz Kimiz", "Biz kimizin icerigi buraya gelecek", false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(
          key: PageStorageKey("$index"),
          title: Text(tumVeriler[index].baslik),
          initiallyExpanded: tumVeriler[index].expanded,
          children: [
            Container(
              color:
                  index % 2 == 0 ? Colors.red.shade200 : Colors.yellow.shade300,
              height: 300,
              width: double.infinity,
              child: Text(tumVeriler[index].icerik),
            ),
          ],
        );
      },
      itemCount: tumVeriler.length,
    );
  }
}
