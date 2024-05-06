import 'dart:convert';

class Movies {
  final String title;
  final String thumbnailUrl;

  Movies({required this.title, required this.thumbnailUrl});

  Map<String, dynamic> toMap() {
    return {
      'title': title, 
      'thumbnail': thumbnailUrl,
    };
  }

  factory Movies.fromMap(Map<String, dynamic> map) {
    return Movies(
      title: map['title'] ?? '',
      thumbnailUrl: map['thumbnail'] ?? '',
    );
  }

  String toJason() => json.encode(toMap());

  factory Movies.fromJson(String source) =>
      Movies.fromJson(json.decode(source));
}
