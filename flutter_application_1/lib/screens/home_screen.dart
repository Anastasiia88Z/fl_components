import 'package:flutter/material.dart';

import 'package:flutter_application_1/router/app_routes.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Components en Flutter'),
          //elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                leading: Icon(
                  menuOptions[i].icon,
                  color: AppTheme.primary,
                ),
                title: Text(menuOptions[i].name),
                onTap: () {
                  //final route = MaterialPageRoute(
                  //builder: (context) => const Listview1Screen());
                  //Navigator.push(context, route); navigtor tiene una flecha de retorno
                  //Navigator.pushReplacement(context, route);   navigator no tiene una flecha de retorno
                  Navigator.pushNamed(context, menuOptions[i].route);
                }),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
