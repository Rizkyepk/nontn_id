import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nontn_id/moduls/moduls_colors.dart';
import 'package:nontn_id/route/route_constant.dart';
import 'package:nontn_id/utils/form_validator.dart';
import 'package:nontn_id/widget/form_tamplate_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final colors = generateColors(Colors);
    return Scaffold(
      backgroundColor: colors['firstColor'],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  height: 192.0,
                  child: Image.asset('assets/images/NontnID.png'),
                ),
                // Image.asset('assets/images/NontnID.png'),
                const SizedBox(height: 104),
                const Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 32),
                FormTamplate(
                  hintText: 'Username',
                  icon: Icons.person_2_outlined,
                  controller: usernameController,
                  validator: (value) =>
                      textFormValidators(textName: 'Username', value: value),
                ),
                const SizedBox(height: 8),
                FormTamplate(
                  hintText: 'Password',
                  icon: Icons.lock_outlined,
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) =>
                      textFormValidators(textName: 'Password', value: value),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Belum punya akun?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    // text dibungkus dengan widget agar dapat di click
                    InkWell(
                      onTap: () {
                        context.go(RouteConstant.registration);
                        // Navigator.pushNamed(context, RouteConstant.registration);
                      },
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        // color: colors['thirdColor'],
        child: ElevatedButton(
          onPressed: () {
            if (formkey.currentState!.validate()) {
              // untuk mengambil value
              print('Username: ${usernameController.text}');
              print('Password: ${passwordController.text}');
              context.go(RouteConstant.main);
              // setState(() {
              //   usernameController.clear();
              //   passwordController.clear();
              // });
            } else {
              print('From tidak valid');
            }
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Radius 10
            ),
          ),
          child: const Text('Masuk'),
        ),
      ),
    );
  }
}
