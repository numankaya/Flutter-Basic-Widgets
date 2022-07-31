import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  PageViewOrnek({Key? key}) : super(key: key);

  @override
  State<PageViewOrnek> createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool yatayEksen = true;
  bool pageSnapping = true;
  bool reverseSira = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection:
                yatayEksen == true ? Axis.horizontal : Axis.vertical,
            reverse: reverseSira,
            controller: myController,
            pageSnapping: pageSnapping,
            onPageChanged: (index) {
              debugPrint("Page change gelen index: $index");
            },
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.indigo.shade300,
                child: Center(
                  child: Column(
                    children: [
                      Text("Sayfa 0", style: TextStyle(fontSize: 30)),
                      RaisedButton(
                        onPressed: () {
                          myController.jumpToPage(2);
                        },
                        child: Text("İkinci sayfaya git"),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.amberAccent,
                child: Center(
                  child: Text("Sayfa 1", style: TextStyle(fontSize: 30)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.teal,
                child: Center(
                  child: Text("Sayfa 2", style: TextStyle(fontSize: 30)),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Yatay Eksende Çalış"),
                      Checkbox(
                        value: yatayEksen,
                        onChanged: (b) {
                          setState(
                            () {
                              yatayEksen = b!;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Page Snapping"),
                      Checkbox(
                        value: pageSnapping,
                        onChanged: (b) {
                          setState(
                            () {
                              pageSnapping = b!;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Ters Sıra"),
                      Checkbox(
                        value: reverseSira,
                        onChanged: (b) {
                          setState(
                            () {
                              reverseSira = b!;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
