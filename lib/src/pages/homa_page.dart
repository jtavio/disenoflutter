import 'package:flutter/material.dart';
import 'package:disenos/src/widgets/background.dart';
import 'package:disenos/src/widgets/custom_navigation_bar.dart';
import 'package:disenos/src/widgets/page_title.dart';
import 'package:disenos/src/widgets/card_table.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          //background
          children: [Background(), _HomeBody()],
        ),
        //bottomnaviagtionbar
        bottomNavigationBar: CustomBottomBar());
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //titulos
          PageTitle(),
          //cardTable
          CardTable()
        ],
      ),
    );
  }
}
