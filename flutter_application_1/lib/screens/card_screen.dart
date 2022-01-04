import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomcardType1(),
              SizedBox(height: 10),
              CustomCardType2(
                imageUrl:
                    'http://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg',
              ),
              SizedBox(height: 20),
              CustomCardType2(
                imageUrl:
                    'https://www.mickeyshannon.com/images/landscape-photography.jpg',
              ),
              SizedBox(height: 20),
              CustomCardType2(
                name: 'Un hermoso paisaje',
                imageUrl:
                    'https://www.theolivepress.es/wp-content/uploads/2019/02/High-frontier.jpg',
              ),
              SizedBox(height: 100),
            ]));
  }
}
