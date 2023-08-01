import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mamitas/app/presentation/widgets/button_form.dart';
import 'package:mamitas/app/presentation/widgets/form_text_field.dart';

class LoginView extends StatelessWidget {
  static const String name = 'login_view';

  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Logo
              SvgPicture.asset(
                'assets/images/MyMarca.svg',
                colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary, BlendMode.srcIn),
              ),
              Text(
                "Login",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const SizedBox(height: 20,),
              const MyFormTextField(
                labelText: 'Correo Electrónico',
                hintText: 'Ingresa tu correo electrónico ',
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
                suffixIcon: false,
              ),
              const SizedBox(height: 20,),
              const MyFormTextField(
                labelText: 'Contraseña',
                hintText: 'Ingresa tu contraseña',
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
                suffixIcon: false,
              ),
              Padding (
                padding: EdgeInsets.symmetric(horizontal: 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: Text('¿Olvidaste tu contraseña?',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary
                          ),
                    ),
                    ),
                    ]
                  ),
              ),
              const SizedBox(height: 20,),
              ButtonForm(
                  text: 'Login',
                  onPressed: (){},
              ),
              //Form
              //Button
              //TextButton
            ],
          ),
        ),
      )
      ),
    );
  }
}
