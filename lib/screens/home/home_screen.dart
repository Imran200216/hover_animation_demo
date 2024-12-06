import 'package:flutter/material.dart';
import 'package:hover_animation_demo/screens/home/home_desktop_screen.dart';
import 'package:hover_animation_demo/screens/home/home_mobile_screen.dart';
import 'package:hover_animation_demo/screens/home/home_tablet_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Media query
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF1F2747),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1400,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (size.width >= 1100)
                  const HomeDesktopScreen()
                else if (size.width >= 650 && size.width < 1100)
                  const HomeTabletScreen()
                else
                  const HomeMobileScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
