import 'package:flutter/material.dart';
import 'package:disenos/src/pages/diseno_basic.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:disenos/src/pages/homa_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_page',
      theme: ThemeData.dark(),
      routes: {
        'basic_design': (_) => BasicDesignScrenn(),
        'scroll_page': (_) => ScrollPage(),
        'home_page': (_) => HomePage()
      },
    );
  }
}
