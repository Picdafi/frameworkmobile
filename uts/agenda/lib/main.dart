import 'package:agenda/data/data.dart';
import 'package:flutter/material.dart';
import 'package:agenda/detail.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          primaryColor: Colors.green),
      home: new ListPage(title: 'Tahap Belajar'),
      // home: DetailPage(),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;

  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Lesson lesson) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white))),
        child: Icon(Icons.book, color: Colors.white),
      ),
      title: Text(
        lesson.title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                // tag: 'hero',
                child: LinearProgressIndicator(
                    backgroundColor: Colors.blue,
                    value: lesson.indicatorValue,
                    valueColor: AlwaysStoppedAnimation(Colors.green)),
              )),
          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(lesson.level,
                    style: TextStyle(color: Colors.white))),
          )
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(lesson: lesson)));
      },
    );

    Card makeCard(Lesson lesson) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(lesson),
      ),
    );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );

    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.book, color: Colors.white),
              onPressed: () {},
            ),
           IconButton(
              icon: Icon(Icons.note, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.white),
//              onPressed: () {MyProfil();},
//                onPressed: () => Navigator.pop(context, MyProfil),
            onPressed: () {},
            ),
          ],
        ),
      ),
    );
    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.blue,
     // fromRGBO(58, 66, 86, 1.0)
      appBar: topAppBar,
      body: makeBody,
      bottomNavigationBar: makeBottom,
    );
  }
}

List getLessons() {
  return [
    Lesson(
        title: "Memulai Dart",
        level: "Pemula",
        indicatorValue: 0.33,
        price: 20,
        content:
        "Untuk mengawali bisa dilakukan dengan cara mengenal bahasa Dart, ruang lingkup aplikasi Dart, cara instalasi Dart, Dart tools, Konfigurasi IDE."),
    Lesson(
        title: "Sintaksis Dasar Dart",
        level: "Pemula",
        indicatorValue: 0.33,
        price: 50,
        content:
        "Pembelajaran sintaksis dasar Dart bisa dimulai dengan pengenalan Struktur dasar dan konsep penting program Dart, kata kunci(keyword), variabel : var, final, const dan di ikuti tipe data yang digunakan, Fungsi/Function, Operator serta pengendali alur program serta error dan exception handling. "),
    Lesson(
        title: "OOP pada Dart",
        level: "Intermidiate",
        indicatorValue: 0.66,
        price: 30,
        content:
        "OOP merupakan kepanjangan dari Object Oriented Programming. Pada proses ini tahapan yang dipelajari bisa dimulai dari pengertian OOP dan pola pikir objek, Class pada Dart, Konstruktor, Tipe objek, variabel instance, Getter dan Setter, method, kelas abstrak, interface, extend kelas dan mixins. "),
    Lesson(
        title: "Asynchronous Programming, Konkurensi dan Tooling",
        level: "Intermidiate",
        indicatorValue: 0.66,
        price: 30,
        content:
        "Asynchronous programming mulai dari pengertian hingga kelas Future dan Stream yang ada didalamnya, Konkurensi mulai dari pengertian dan penggunaan isolates. Pemahaman tentang Dart Platform, command line tools, Pub untuk Package manager serta Effective Dart. "),
    Lesson(
        title: "Memulai Flutter",
        level: "Advanced",
        indicatorValue: 1.0,
        price: 50,
        content:
        "Pertama bisa mempelajari tentang pengelanan Flutter. Selanjutnya bisa dilakukan instalasi flutter serta setup dan konfigurasi peranti pengembangan. Mencoba membangun aplikasi serta mengenal material design yang digunakan untuk mendukung dalam proses pembuatan aplikasi. "),
    Lesson(
        title: "Mengenal Widgets dan Layout",
        level: "Advanced",
        indicatorValue: 1.0,
        price: 50,
        content:
        "Pembelajaran pertama bisa dengan cara mengenal pengertian widgets pada flutter, cara implementasi selain itu juga layout widgets untuk aplikasi flutter apa saja, lebih lanjutnya adalah dengan interaktifitas aplikasi. "),
    Lesson(
        title: "Assets, Navigasi dan Animasi",
        level: "Advanced",
        indicatorValue: 1.0,
        price: 50,
        content:
        "Bisa dimulai dengan memahami assets, baik berupa images maupun bukan images dilanjutkan dengan pengeloaan assets, ikon aplikasi, launch screen, memahami navigasi, mengelola routes. Untuk animasi bisa dipahami dulu dasar - dasar animasi, hero animations, staggered animations, serta widget di flutter untuk animasi dan motion  ")
  ];
}