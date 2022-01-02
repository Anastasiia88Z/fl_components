import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
        //backgroundColor: Colors.lightGreenAccent,
        //elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                title: Text(options[i]),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.lightGreenAccent,
                ),
                //onTap: () {
                //final game = options[i];
                //print(game);
                //},
                onTap: null,
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length),
    );
  }
}
