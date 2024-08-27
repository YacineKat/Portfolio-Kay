import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/education_info.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    super.key,
    required this.education,
  });

  final Education education;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(defaultPadding / 2),
      ),
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            education.name!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(education.source!),
          const SizedBox(height: defaultPadding),
          Text(
            education.text!,
            style: const TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
