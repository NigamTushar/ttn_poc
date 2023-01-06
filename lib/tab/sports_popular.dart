import 'package:flutter/material.dart';
import 'package:newers_world/seoWidget/app_text.dart';

class SportsPopular extends StatelessWidget {
  const SportsPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Column(
        children: NextToGoModel.getHeaderMenuData()
            .map(
              (model) => Column(
                children: [
                  model.isHeader ? getHeader(model) : buildSizedBox(model),
                  if (!model.isHeader && !model.isLastIndex) ...[
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
            text: model.title,
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
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          children: [
            Icon(model.icon),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: model.title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  AppText(
                    text: model.description,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.only(
                top: 8.0,
                bottom: 8.0,
                left: 20.0,
                right: 20.0,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              child: Text(
                model.odds,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NextToGoModel {
  final IconData icon;
  final String title;
  final String description;
  final String odds;
  final bool isHeader;
  final bool isLastIndex;

  NextToGoModel(
      {required this.icon,
      required this.title,
      required this.description,
      required this.odds,
      this.isHeader = false,
      this.isLastIndex = false});

  static List<NextToGoModel> getHeaderMenuData() => [
        NextToGoModel(
            icon: Icons.sports_baseball,
            title: 'Sports - Popular',
            description: '',
            odds: '',
            isHeader: true),
        NextToGoModel(
            icon: Icons.sports_cricket_outlined,
            title: 'Arsenal - Result',
            description:
                'English Premier League, Arsenal v Newcastle, Wed 4 Jan 1:15',
            odds: '1.75'),
        NextToGoModel(
            icon: Icons.sports_volleyball,
            title: 'Man United - Result',
            description:
                'English Premier League, Man United v Bournemouth, Wed 4 Jan 1:30',
            odds: '1.22'),
        NextToGoModel(
            icon: Icons.sports_cricket_sharp,
            title: 'Perth Scorchers - Head To Head',
            description:
                'Big Bash, Perth Scorchers v Sydney Thunder, Wed 4 Jan 15:45',
            odds: '1.55'),
        NextToGoModel(
            icon: Icons.sports_baseball,
            title: 'Sydney Sixers - Head To Head',
            description:
                'Big Bash, Sydney Sixers v Brisbane Heat, Wed 4 Jan 12:35',
            odds: '1.30'),
        NextToGoModel(
            icon: Icons.sports_volleyball,
            title: 'AC Milan - Result',
            description:
                'Italian Serie A, Salernitana v AC Milan, Wed 4 Jan 17:00',
            odds: '1.41',
            isLastIndex: true),
      ];
}
