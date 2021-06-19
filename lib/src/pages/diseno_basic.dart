import 'package:flutter/material.dart';

class BasicDesignScrenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(image: AssetImage('assets/landscape.jpg')),
        Title(),
        BottonSection(),
        //Description

        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
              'Consectetur cillum consequat labore duis cupidatat dolor Lorem esse laborum velit. Veniam commodo exercitation amet deserunt excepteur voluptate do minim deserunt nulla sint dolor. Proident laboris ex laboris nisi ullamco nostrud excepteur veniam. Minim nostrud ad id tempor minim consequat do amet consequat amet quis minim occaecat. Ut non fugiat est eu culpa. Magna in occaecat nulla fugiat elit pariatur eu excepteur eu. Proident amet ea exercitation nisi exercitation exercitation sit labore.'),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'kandersteg, Switzerland',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}

class BottonSection extends StatelessWidget {
  const BottonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBotton(icon: Icons.call, text: 'Call'),
          CustomBotton(icon: Icons.map_sharp, text: 'Route'),
          CustomBotton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomBotton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomBotton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue.shade400,
          size: 30.0,
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
