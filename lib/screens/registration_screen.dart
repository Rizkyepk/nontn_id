import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nontn_id/moduls/moduls_colors.dart';
import 'package:nontn_id/widget/form_tamplate_widget.dart';

import '../route/route_constant.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = generateColors(Colors);
    return Scaffold(
      backgroundColor: colors['firstColor'],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Center(
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
                'Registration',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 32),
              FormTamplate(
                hintText: 'Email',
                icon: Icons.mail_outline,
                controller: TextEditingController(),
              ),
              const SizedBox(height: 8),
              FormTamplate(
                hintText: 'Username', 
                icon: Icons.person_2_outlined,
                controller: TextEditingController(),
              ),
              const SizedBox(height: 8),
              FormTamplate(
                hintText: 'Password', 
                icon: Icons.lock_outlined,
                controller: TextEditingController(),
              ),
              const SizedBox(height: 8),
              FormTamplate(
                hintText: 'Ulangi Password', 
                icon: Icons.lock_outlined,
                controller: TextEditingController(),
              ),

              const SizedBox(height: 8),
              Row(
                children: [
                  const Text(
                    'Sudah punya akun?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // text dibungkus dengan widget agar dapat di click
                  InkWell(
                    onTap: () {
                      context.go(RouteConstant.login);
                      // Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Masuk',
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        // color: colors['thirdColor'],
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(25),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Radius 10
            ),
          ),
          child: const Text('Daftar'),
        ),
      ),
    );
  }
}
