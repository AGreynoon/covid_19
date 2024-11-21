import 'package:covid_19/themes/style.dart';
import 'package:flutter/material.dart';

class TotalCasesCard extends StatelessWidget {
  const TotalCasesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 30),
        alignment: Alignment.centerRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '6738',
              style: textStyle(Colors.white, 50, FontWeight.w900),
            ),
            Text(
              'Total Cases',
              style: textStyle(Colors.white, 20, FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
