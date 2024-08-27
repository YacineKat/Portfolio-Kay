import 'package:flutter/material.dart';

import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Flutter",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "C",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "CSS",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.62,
          label: "JavaScript",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.50,
          label: "Php",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.45,
          label: "MySQL",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.50,
          label: "Git",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "GDScript",
        ),
      ],
    );
  }
}
