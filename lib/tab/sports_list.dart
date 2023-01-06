import 'package:flutter/material.dart';
import 'package:newers_world/seoWidget/app_text.dart';
import 'package:seo_service/seo.dart';

class SportsList extends StatelessWidget {
  const SportsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Column(
        children: [
          Column(
            children: SportsListModel.getHeaderMenuData()
                .map(
                  (model) => Column(
                    children: [
                      model.isHeader ? getHeader(model) : buildSizedBox(model),
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
                text: "See All Matches >",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.green,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container getHeader(SportsListModel model) {
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

  Widget buildSizedBox(SportsListModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Stack(children: [
        Column(
          children: [
            Center(
              child: AppText(
                text: model.title,
                tagStyle: TextTagStyle.h1,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: const [
                  AppText(
                    text: 'In Play  |  ',
                    tagStyle: TextTagStyle.h2,
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  AppText(
                    text: 'Bet by phone 1300 408 773  ',
                    tagStyle: TextTagStyle.h2,
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(225, 120, 75, 1)),
                  ),
                  Icon(
                    Icons.phone_locked_rounded,
                    color: Color.fromRGBO(225, 120, 75, 1),
                    size: 15,
                  ),
                  Text(
                    '  |  ',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  Icon(
                    Icons.adjust_rounded,
                    color: Color.fromRGBO(225, 120, 75, 1),
                    size: 15,
                  ),
                  AppText(
                    text: '  Market is Suspended',
                    tagStyle: TextTagStyle.h2,
                    style: TextStyle(
                        fontSize: 12, color: Color.fromRGBO(225, 120, 75, 1)),
                  ),
                  Text(
                    '  |  ',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  AppText(
                    text: 'Head To Head  ',
                    tagStyle: TextTagStyle.h2,
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                  Icon(
                    Icons.copy_all_sharp,
                    size: 15,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            model.sportsList.isNotEmpty
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: model.sportsList
                        .map(
                          (e) => Expanded(
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(230, 230, 230, 1),
                                    width: 2),
                                color: const Color.fromRGBO(246, 246, 246, 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AppText(
                                    text: e.teamTitle,
                                    tagStyle: TextTagStyle.h1,
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.black54),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    e.odds,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        color: Color.fromRGBO(225, 120, 75, 1)),
                                  ),
                                  if (e.id.isNotEmpty) ...[
                                    const SizedBox(height: 5),
                                    Text(
                                      e.id,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(225, 120, 75, 1)),
                                    )
                                  ],
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  )
                : const SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                '${model.raceTiming} | Tab.com.au',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 238, 234, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            width: 125,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.video_call,
                  size: 20,
                  color: Color.fromRGBO(241, 142, 97, 1),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.play_circle,
                  size: 15,
                  color: Color.fromRGBO(241, 142, 97, 1),
                ),
                const SizedBox(width: 5),
                Text(
                  '${model.marketNumber} Markets >',
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(241, 142, 97, 1),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class SportsListModel {
  final String raceTiming;
  final String title;
  final bool isHeader;
  final int marketNumber;
  final List<SportsDetails> sportsList;

  SportsListModel(
      {required this.raceTiming,
      required this.title,
      required this.marketNumber,
      this.isHeader = false,
      required this.sportsList});

  static List<SportsListModel> getHeaderMenuData() => [
        SportsListModel(
            raceTiming: '',
            title: 'Basketball - NBA',
            marketNumber: 0,
            isHeader: true,
            sportsList: []),
        SportsListModel(
            raceTiming: 'Thu 5 Jan 8:40',
            title: 'Golden State v Detroit',
            marketNumber: 2,
            sportsList: [
              SportsDetails(
                  teamTitle: 'H2H Golden State', odds: 'SUSP', id: ''),
              SportsDetails(teamTitle: 'H2H Detroit', odds: 'SUSP', id: '')
            ]),
        SportsListModel(
            raceTiming: 'Thu 5 Jan 8:40',
            title: 'LA Lakers v Miami',
            marketNumber: 4,
            sportsList: [
              SportsDetails(
                  teamTitle: 'H2H LA Lakers', odds: '3.40', id: '62870'),
              SportsDetails(teamTitle: 'H2H Miami', odds: '1.30', id: '62921')
            ]),
        SportsListModel(
            raceTiming: 'Thu 5 Jan 8:40',
            title: 'Sacramento v Atlanta',
            marketNumber: 24,
            sportsList: [
              SportsDetails(
                  teamTitle: 'H2H Sacramento', odds: '4.20', id: '61987'),
              SportsDetails(teamTitle: 'H2H Atlanta', odds: '1.21', id: '81767')
            ]),
      ];
}

class SportsDetails {
  final String teamTitle;
  final String odds;
  final String id;

  SportsDetails(
      {required this.teamTitle, required this.odds, required this.id});
}
