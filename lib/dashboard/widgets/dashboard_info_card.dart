import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/dashboard/widgets/clickable_list.dart';
import 'package:newers_world/dashboard/widgets/newi_notifications_card.dart';
import 'package:newers_world/helper/responsive_widget.dart';

import 'dashboard_card_list.dart';
import 'team_list.dart';

enum CardType {
  stakeholder,
  toDo,
  watchList,
  bookmarks,
  myTeam,
  newerRecognition,
  newiNotifications,
}

class DashboardInfoCard extends StatelessWidget {
  final String boxTitle;
  final CardType cardType;
  final double? width;

  const DashboardInfoCard(
      {Key? key, required this.boxTitle, required this.cardType, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: ResponsiveWidget.isLargeScreen(context) ? 400 : 600,
          maxWidth: 600,
          maxHeight: ResponsiveWidget.isLargeScreen(context) ? 400 : 400,
          minHeight: ResponsiveWidget.isLargeScreen(context) ? 400 : 400),
      child: Container(
        decoration: StyleUtils.cardDecoration,
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: ResponsiveWidget.isLargeScreen(context) ? 20 : 0,
            bottom: ResponsiveWidget.isLargeScreen(context) ? 20 : 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Text(
                boxTitle,
                style: const TextStyle(
                    // color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            const Divider(
              thickness: 1.0,
            ),
            if (cardType == CardType.toDo) ...[
              const DashboardCardList()
            ] else if (cardType == CardType.myTeam) ...[
              const TeamList()
            ] else if (cardType == CardType.bookmarks ||
                cardType == CardType.watchList) ...[
              ClickableList(cardType: cardType)
            ] else if (cardType == CardType.newiNotifications) ...[
              const NewiNotificationCardContent()
            ] else ...[
              Container(
                color: Colors.blueAccent,
              )
            ]
          ],
        ),
      ),
    );
  }
}
