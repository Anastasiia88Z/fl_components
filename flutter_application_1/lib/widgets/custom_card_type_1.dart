import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class CustomcardType1 extends StatelessWidget {
  const CustomcardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
          title: Text('Soy un titulo'),
          subtitle: Text(
              'Culpa commodo excepteur amet ut Lorem fugiat nisi duis velit proident elit sunt do. Do dolore labore non proident pariatur exercitation enim voluptate deserunt fugiat. Pariatur officia mollit ex et exercitation proident veniam est minim non duis veniam.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
                //style: TextButton.styleFrom(primary: Colors.lightGreen),
              ),
              TextButton(onPressed: () {}, child: const Text('Ok'))
            ],
          ),
        )
      ],
    ));
  }
}
