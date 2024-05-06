import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nontn_id/moduls/moduls_colors.dart';
import 'package:nontn_id/screens/screen.dart';
// import 'package:nontn_id/screens/screen.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int selectedIndex = 0;

  List<Widget> _bodyWidgets() {
    return [
      const HomeScreen(),
      const TicketScreen(),
      const MovieScreen(),
      const ProfileScreen(),
    ];
  }

  final iconList = <IconData>[
    Icons.home,
    Icons.local_activity,
    Icons.movie,
    Icons.account_circle,
  ];

  final labelList = const [
    'Home',
    'Ticket',
    'Movie',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    final colors = generateColors(Colors);
    return Scaffold(
      body: _bodyWidgets()[selectedIndex],
      bottomNavigationBar: Flexible(
        child: AnimatedBottomNavigationBar.builder(
          backgroundColor: colors['secondColor'],
          itemCount: iconList.length,

          tabBuilder: (int index, bool isActive) {
            final color = isActive
                ? const Color.fromARGB(255, 233, 209, 27)
                : Colors.white.withOpacity(0.5);
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              alignment: Alignment.center,
              // width: double.maxFinite,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      iconList[index],
                      size: 30,
                      color: color,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      labelList[index],
                      style: TextStyle(fontSize: 12, color: color),
                    ),
                  ]),
            );
          },
          activeIndex: selectedIndex,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) => setState(() => selectedIndex = index),
        ),
      ),
    );
  }
}
