import 'package:flutter/material.dart';

import '../main/main_screen.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/education.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        MyProjects(),
        Education(),
      ],
    );
  }
}
