import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Column _buildButton(IconData ico, Color color, String label) {
  return Column(children: [Icon(ico), Text(label)]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //phan giao dien hinh anh
    Widget imgSection = Image.asset(
      "images/anhnen.jpg",
      width: 600,
      height: 500,
      fit: BoxFit.cover,
    );
    //phan giao dien tieu de
    Widget title_colText = Column(
      children: [Text("chuoi tren"), Text("Chuoi duoi")],
    );
    Widget titleSection = Row(children: [
      title_colText,
      Icon(
        Icons.star,
        color: Colors.red,
      ),
      Text("41"),
    ]);

    Widget buttonSection = Row(
      children: [
        _buildButton(Icons.call, Colors.blue, "CALL"),
        _buildButton(Icons.near_me, Colors.blue, "ROUTE"),
        _buildButton(Icons.share, Colors.blue, "SHARE"),
      ],
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Column(
        children: [imgSection, titleSection, buttonSection],
      )),
    );
  }
}
