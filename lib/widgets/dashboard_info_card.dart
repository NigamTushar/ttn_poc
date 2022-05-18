import 'package:flutter/material.dart';
import 'package:newers_world/widgets/stakeholder_list.dart';

import 'dashboard_cardList.dart';

enum CardType {
  stakeholder,
  toDo,
  watchList,
  bookmarks,
}

class DashboardInfoCard extends StatelessWidget {
  final String boxTitle;
  final CardType cardType;

  const DashboardInfoCard(
      {Key? key, required this.boxTitle, required this.cardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 300,
        minHeight: 250,
        minWidth: 225,
        maxWidth: 380,
      ),
      height: 300,
      width: 380,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: Text(
              boxTitle,
              style: const TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          const Divider(
            thickness: 1.0,
          ),

          //TODO: My to do list, watch list and bookmarks will have the same time of UI with little differences
          // this can be handled in the same widget by passing arguments type of box
          // In case of bookmarks and watchlist the unordered list will have links and to do list will be normal
          // and have a trailing widget to open the task page.

          if (cardType == CardType.stakeholder) ...[
            const StakeholdersList()
          ] else if (cardType == CardType.toDo) ...[
            const DashboardCardList()
          ] else ...[
            Container(
              color: Colors.blueAccent,
            )
          ]

          // if(cardType == CardType.stakeholder) const StakeholdersList()
          // if(cardType == CardType.toDo) Container(color: Colors.black,),
        ],
      ),
    );
  }
}
