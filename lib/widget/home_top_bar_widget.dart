import 'package:flutter/material.dart';

class HomeTopBarWidget extends StatelessWidget {
  const HomeTopBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/profile_img.jpg',
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            )
          ),
        ),
        Expanded(child: SizedBox()),
        const Row(
          children: [
            Icon(Icons.place_outlined),
            Text('Yogyakarta'),
          ]
        ),
        Expanded(child: SizedBox()),
        InkWell(
          onTap: () {},
          child: Stack(
            children: [
              Icon(Icons.notifications_none_rounded),
              Positioned(
                right: 3,
                top: 3,
                child: Container(
                  width: 9,
                  height: 9,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4.5),
                    ),
                  
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 20),
      ]
    );
  }
}