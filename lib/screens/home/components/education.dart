import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/education_info.dart';
import 'education_card.dart';

class Education extends StatelessWidget {
  const Education({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: defaultPadding, bottom: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Education",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          Row(
            children: List.generate(
              demo_education.length,
              (index) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: EducationCard(
                    education: demo_education[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
