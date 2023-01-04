import 'package:flutter/material.dart';
import 'package:newers_world/helper/responsive_widget.dart';
import 'package:newers_world/seoWidget/app_text.dart';

class RacingNextToGo extends StatelessWidget {
  const RacingNextToGo({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Card(
      elevation: 10.0,
      child: Container(
        constraints: BoxConstraints(
            maxWidth: ResponsiveWidget.isLargeScreen(context)
                ? screenSize.width / 3.45
                : ResponsiveWidget.isMediumScreen(context)
                    ? screenSize.width / 2.2
                    : 500),
        child: Column(
          children: [
            Column(
              children: NextToGoModel.getHeaderMenuData()
                  .map(
                    (model) => Column(
                      children: [
                        model.isHeader
                            ? getHeader(model)
                            : buildSizedBox(model),
                        if (!model.isHeader) ...[
                          const Divider(
                            height: 5,
                            color: Colors.black26,
                          )
                        ]
                      ],
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(
              height: 50,
              child: Align(
                alignment: Alignment.center,
                child: AppText(
                  text: "See Today's Racing >",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container getHeader(NextToGoModel model) {
    return Container(
      height: 50,
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Align(
          alignment: Alignment.centerLeft,
          child: AppText(
            text: model.racerName,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox(NextToGoModel model) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Row(
          children: [
            Icon(model.icon),
            const SizedBox(width: 15),
            SizedBox(
              width: 30,
              child: Text(
                model.raceNumber,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Text(
              model.raceTiming,
              style: TextStyle(
                fontSize: 15,
                color: Colors.redAccent.shade200,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: AppText(
                text: model.racerName,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Icon(model.weatherIcon),
            const SizedBox(width: 15),
            Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              model.distance,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.navigate_next)
          ],
        ),
      ),
    );
  }
}

class NextToGoModel {
  final IconData icon;
  final IconData weatherIcon;
  final String raceNumber;
  final String raceTiming;
  final String racerName;
  final String distance;
  final bool isHeader;

  NextToGoModel(
      {required this.icon,
      required this.weatherIcon,
      required this.raceNumber,
      required this.raceTiming,
      required this.racerName,
      required this.distance,
      this.isHeader = false});

  static List<NextToGoModel> getHeaderMenuData() => [
        NextToGoModel(
            icon: Icons.bike_scooter,
            weatherIcon: Icons.sunny,
            raceTiming: '',
            raceNumber: '',
            racerName: 'Racing - Next To GO',
            distance: '',
            isHeader: true),
        NextToGoModel(
            icon: Icons.bike_scooter,
            weatherIcon: Icons.sunny,
            raceTiming: '17:09',
            raceNumber: 'R9',
            racerName: 'MANDURAH (WA)',
            distance: '400m GOOD'),
        NextToGoModel(
            icon: Icons.electric_scooter,
            weatherIcon: Icons.sunny_snowing,
            raceTiming: '17:15',
            raceNumber: 'R12',
            racerName: 'ROCKHAMPTON (QLD)',
            distance: '407m GOOD'),
        NextToGoModel(
            icon: Icons.directions_bike_outlined,
            weatherIcon: Icons.sunny,
            raceTiming: '17:22',
            raceNumber: 'R3',
            racerName: 'KENILWORTH (ZAF)',
            distance: '1407m GOOD'),
        NextToGoModel(
            icon: Icons.moving_rounded,
            weatherIcon: Icons.cloud,
            raceTiming: '17:32',
            raceNumber: 'R5',
            racerName: 'OXFORD (GBR)',
            distance: '507m GOOD'),
      ];
}
