import 'package:covid_19/themes/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Featurecard extends StatelessWidget {
  final String iconName;
  final String labelName;
  const Featurecard(
      {required this.iconName, required this.labelName, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
            child: SvgPicture.asset(
              iconName,
              width: 35,
            )),
        const SizedBox(
          height: 5,
        ),
        Text(labelName,
            textAlign: TextAlign.center,
            style: textStyle(Colors.grey[600]!, 16, FontWeight.w800)),
      ],
    );
  }
}
