import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Card Widget',
          ),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomcardType1(),
              SizedBox(height: 10),
              CustomCardType2(
                imageUrl:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/24701-nature-natural-beauty.jpg/1200px-24701-nature-natural-beauty.jpg',
              ),
              SizedBox(height: 20),
              CustomCardType2(
                imageUrl:
                    'https://miro.medium.com/max/1200/0*UzP3bFw04qEM-R_Z.jpg',
              ),
              SizedBox(height: 20),
              CustomCardType2(
                name: 'Un hermoso paisaje',
                imageUrl:
                    'https://miro.medium.com/max/1400/0*dR_jn8Nt0M0IXwPW.',
              ),
              SizedBox(height: 100),
            ]));
  }
}
