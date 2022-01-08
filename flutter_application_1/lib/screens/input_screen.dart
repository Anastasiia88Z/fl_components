import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Anastasiia',
      'last_name': 'Zhylina',
      'email': 'anastasiiazhylina@gmail.com',
      'password': '123456',
      'role': 'User'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                    helperText: 'Solo letras',
                  ),
                  const SizedBox(height: 30),
                  const CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                    helperText: 'Solo letras',
                  ),
                  const SizedBox(height: 30),
                  const CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 30),
                  const CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar')),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus();

                      if (!myFormKey.currentState!.validate()) {
                        print(formValues);
                        return;
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
