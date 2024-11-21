import 'package:covid_19/themes/style.dart';
import 'package:covid_19/widgets/featureCard.dart';
import 'package:covid_19/widgets/symptomsCheckerCard.dart';
import 'package:covid_19/widgets/totalCasesCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Berlin, Germany',
              style: textStyle(Colors.white, 18, FontWeight.w600),
            ),
            const Icon(
              Icons.arrow_drop_down_rounded,
              color: Colors.white,
            ),
          ],
        ),
        leading: Image.asset('assets/icons/menu.png'),
        actions: [
          IconButton(
              onPressed: null,
              icon: Image.asset(
                'assets/icons/bell.png',
                width: 25,
              )),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/covid-bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const TotalCasesCard(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                  height: MediaQuery.of(context).size.height - 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: ListView(
                    children: const [
                      SymptomsCheckerCard(),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Featurecard(
                                  iconName: 'assets/icons/map.svg',
                                  labelName: 'Map'),
                              Featurecard(
                                  iconName: 'assets/icons/virus.svg',
                                  labelName: 'Risks of \nInfections'),
                              Featurecard(
                                  iconName: 'assets/icons/upload.svg',
                                  labelName: 'Upload \nData'),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Featurecard(
                                  iconName: 'assets/icons/trend.svg',
                                  labelName: 'Statitstics'),
                              Featurecard(
                                  iconName: 'assets/icons/facemask.svg',
                                  labelName: 'Protection'),
                              Featurecard(
                                  iconName: 'assets/icons/phone.svg',
                                  labelName: 'Contacts'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
