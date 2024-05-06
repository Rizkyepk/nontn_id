import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nontn_id/moduls/moduls_colors.dart';
import 'package:nontn_id/route/route_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //implement logicnya future delay dan menavigasikan langsng ke menu login
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => context.go(RouteConstant.login),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colors = generateColors(Colors);
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/splash_gradien.png',
              fit: BoxFit.cover,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    // Colors.black.withOpacity(1.0), // Hitam dengan opasitas 70%
                    // Colors.transparent, // Transparan
                    colors['firstColor'],
                  ],
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Image.asset('assets/images/NontnID.png'),
            ),
          ],
        ),// untuk membuat seperti tertumpuk
      ),//seperti membuat blank kancvas
    ); //rancangan alasnya atau sebuah halaman untuk diisi apakah mau ada button, dll
  }
}
