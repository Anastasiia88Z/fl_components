import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

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
            children: [
              Card(
                  child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.photo_album_outlined,
                        color: AppTheme.primary),
                    title: Text('Soy un titulo'),
                    subtitle: Text(
                        'Culpa commodo excepteur amet ut Lorem fugiat nisi duis velit proident elit sunt do. Do dolore labore non proident pariatur exercitation enim voluptate deserunt fugiat. Pariatur officia mollit ex et exercitation proident veniam est minim non duis veniam.'),
                  )
                ],
              ))
            ]));
  }
}
