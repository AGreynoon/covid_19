import 'package:covid_19/widgets/locationsCard.dart';
import 'package:covid_19/widgets/searchBarMap.dart';
import 'package:flutter/material.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/city_map.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Searchbarmap(),
              const Spacer(flex: 1),
              SafeArea(
                child: SizedBox(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: const [
                      Locationscard(
                        iconName: 'assets/icons/location.png',
                        labelName: '13 New Cases',
                      ),
                      Locationscard(
                        iconName: 'assets/icons/cross.png',
                        labelName: '3 Hospitals',
                      ),
                      Locationscard(
                        iconName: 'assets/icons/dead.png',
                        labelName: '8 Deaths',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
