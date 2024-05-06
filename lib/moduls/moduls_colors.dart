import 'package:flutter/material.dart';

Map<String, dynamic> generateColors(color) {
  return {
    'firstColor': const Color(0xFF1C1A29),
    'secondColor': const Color(0xFF2F2C44),
    'thirdColor': generate(),
    // Tambahkan warna-warna lain di sini sesuai kebutuhan 
  };
}

LinearGradient generate() {
  return const LinearGradient(
    colors: [
      Color(0xFF867AD2),
      Color(0xFF6C61AF),
      // Color.fromRGBO(60, 60, 60, 1.0), // Warna pertama kalau opasitinya 100%
      // Color.fromRGBO(60, 60, 60, 0.6), // Warna kedua kalau opasitinya 60%
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}