import 'package:flutter/material.dart';
import 'package:image_ii_example/widget/border_widget.dart';
import 'package:image_ii_example/widget/filter_widget.dart';
import 'package:image_ii_example/widget/fit_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Image Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Text('Image'),
              title: Text('BoxFit'),
            ),
            BottomNavigationBarItem(
              icon: Text('Image'),
              title: Text('Borders'),
            ),
            BottomNavigationBarItem(
              icon: Text('Image'),
              title: Text('Filters'),
            ),
          ],
          onTap: (int index) => setState(() => this.index = index),
        ),
        body: Center(child: buildPages()),
      );

  Widget buildPages() {
    switch (index) {
      case 0:
        return FitWidget();
      case 1:
        return BorderWidget();
      case 2:
        return FilterWidget();
      default:
        return Container();
    }
  }
}
