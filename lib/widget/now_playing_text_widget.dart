import 'package:flutter/material.dart';

class NowPlayingTextWidget extends StatelessWidget {
  const NowPlayingTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 20,),
        Text(
          'Sedang Tayang',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Expanded(child: SizedBox()),
        Text(
          'Lihat Semua',
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.grey),
        ),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.grey,
          size: 10,
        ),
        SizedBox(width: 20,),
      ],
    );
  }
}