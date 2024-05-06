import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nontn_id/data/movie.dart';
import 'package:nontn_id/moduls/moduls_colors.dart';
import 'package:nontn_id/route/route_constant.dart';
// import 'package:nontn_id/route/route_constant.dart';

//jadi bisa panggil langsng tanpa banyak import
import 'package:nontn_id/screens/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  //widget untuk 1 aplikasi atau inisiator aplikasi
  Widget build(BuildContext context) {
    final colors = generateColors(Colors);
    return MaterialApp.router(
      title: 'Nonton.ID',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple, 
          brightness: Brightness.dark,
          accentColor: Colors.deepPurpleAccent,
        ),
        scaffoldBackgroundColor: colors['firstColor'],
      ),

      routerConfig:
        GoRouter(
          initialLocation: RouteConstant.splashscreen, 
          routes: [
            GoRoute(
              path: RouteConstant.splashscreen,
              // path: '/splash_screen',
              // name: RouteConstant.splashscreen,
              builder: (BuildContext context, GoRouterState state) =>
                  const SplashScreen(),
            ),
            GoRoute(
              path: RouteConstant.login,
              builder: (BuildContext context, GoRouterState state) =>
                  const LoginScreen(),
            ),
            GoRoute(
              path: RouteConstant.registration,
              builder: (BuildContext context, GoRouterState state) =>
                  const RegistrationScreen(),
            ),
            GoRoute(
                name: '/',
                path: RouteConstant.main,
                builder: (BuildContext context, GoRouterState state) =>
                    const NavbarScreen(),
                routes: [
                  GoRoute(
                    path: 'movies',
                    builder: (BuildContext context, GoRouterState state) =>
                        const MovieListScreen(),
                  ),
                  GoRoute(
                      path: 'movies/:movieId',
                      name: RouteConstant.movieDetail,
                      builder: (BuildContext context, GoRouterState state) {
                        String movieId = state.pathParameters['movieId'] as String;

                        return MovieDetailScreen(
                          movieId: movieId, movie: state.extra as Movies,
                        );
                      }),
                  GoRoute(
                    path: 'movies/:movieId/select_movie',
                    builder: (BuildContext context, GoRouterState state) =>
                        const SelectMovieScreen(),
                  ),
                  GoRoute(
                    path: 'movies/:movieId/select_seat',
                    builder: (BuildContext context, GoRouterState state) =>
                        const SelectSeatScreen(),
                  ),
                ],
            ),
            GoRoute(
                  name: '/order_date',
                  path: RouteConstant.main,
                  builder: (BuildContext context, GoRouterState state) =>
                      const NavbarScreen(),
                ),
                GoRoute(
                  name: '/order_seat',
                  path: RouteConstant.main,
                  builder: (BuildContext context, GoRouterState state) =>
                      const NavbarScreen(),
                ),
          ],
        ),
    );
  }
}
