import 'package:covid_19/themes/style.dart';
import 'package:flutter/material.dart';

class SymptomsCheckerCard extends StatelessWidget {
  const SymptomsCheckerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset.zero,
              color: Colors.grey[400]!,
              blurRadius: 20,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              height: 150,
              width: (MediaQuery.of(context).size.width - 80) / 2,
              child: Image.asset('assets/icons/doctor.png')),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Symptom \nChecker',
                  style: textStyle(Colors.black, 25, FontWeight.w800),
                ),
                const SizedBox(height: 10),
                Text(
                  'Based on common \nSymptom',
                  textAlign: TextAlign.center,
                  style: textStyle(Colors.grey[600]!, 16, FontWeight.w800),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
