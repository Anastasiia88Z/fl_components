import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Components en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.access_time_sharp),
                title: const Text('Nombre de ruta'),
                onTap: () {
                  //final route = MaterialPageRoute(
                  //builder: (context) => const Listview1Screen());
                  //Navigator.push(context, route); navigtor tiene una flecha de retorno
                  //Navigator.pushReplacement(context, route);   navigator no tiene una flecha de retorno
                  Navigator.pushNamed(context, 'alert');
                }),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
