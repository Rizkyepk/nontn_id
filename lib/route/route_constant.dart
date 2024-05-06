class RouteConstant {
  static String get splashscreen => '/splash_screen';
  static String get login => '/login';
  static String get registration => '/registration';
  static String get main => '/main';
  static String get movieList => '/movies';
  static String get movieDetail => 'movies/:movieId';
}

//kalau menggunakan routerNamed dia akan menumpuk si framnenya
//routerReplaceNamed itu jadi frame awal akan diganti jadi yg baru kebuka 
//biasanya dipakai untuk frame spalshsreen ke login karna gamungkin bisa di back ke splash 