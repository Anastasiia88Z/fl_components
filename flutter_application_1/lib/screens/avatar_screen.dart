import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stan Lee'),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 5),
              child: const CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.lightGreen,
              ),
            )
          ],
        ),
        body: const Center(
          child: CircleAvatar(
            maxRadius: 200,
            backgroundImage: NetworkImage(
                'https://c8.alamy.com/comp/2C2RKJB/happy-cartoon-monster-one-eye-cyclops-face-vector-halloween-monster-square-avatar-2C2RKJB.jpg'),
          ),
        ));
  }
}
