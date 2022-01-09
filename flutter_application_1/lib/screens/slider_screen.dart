import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders && Checks'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                  min: 50,
                  max: 400,
                  activeColor: AppTheme.primary,
                  value: _sliderValue,
                  onChanged: (value) {
                    _sliderValue = value;
                    setState(() {});
                  }),
              Image(
                image: NetworkImage(
                    'https://st.depositphotos.com/1017994/4251/i/950/depositphotos_42517895-stock-photo-giraffe-isolated-on-white-background.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ));
  }
}
