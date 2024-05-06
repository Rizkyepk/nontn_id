import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nontn_id/moduls/moduls_colors.dart';
import 'package:nontn_id/route/route_constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = generateColors(Color);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors['firstColor'],
        leading: InkWell(
          onTap: () {
            context.go(RouteConstant.main);
          },
          child: const Icon(
            Icons
                .keyboard_arrow_left_outlined, // or any other leading icon you're using
            color: Colors.white, // set the color to white
          ),
        ),
      ),
      backgroundColor: const Color(0xFF1c1a29),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 14, right: 14),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 360,
                    height: 150,
                    color: colors['secondColor'],
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox(
                              child: Image.asset(
                                'assets/images/profile_img.jpg',
                                width: 90, 
                                height: 90, 
                              ),
                            ),
                          ),
                        ),
                        const SizedBox( width: 10), 
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Maria Zhang Suki',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  // Text()
                                ),
                              ]
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
