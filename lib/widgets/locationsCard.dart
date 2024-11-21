import 'package:covid_19/themes/style.dart';
import 'package:flutter/material.dart';

class Locationscard extends StatelessWidget {
  final String iconName;
  final String labelName;
  const Locationscard(
      {required this.iconName, required this.labelName, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: 200,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                iconName,
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    labelName, // Title (could be dynamic)
                    style: textStyle(Colors.black, 18, FontWeight.w800),
                  ),
                  const SizedBox(height: 4), // Small space
                  Text(
                    'Near You', // Sub-text
                    style: textStyle(Colors.grey[600]!, 16, FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
