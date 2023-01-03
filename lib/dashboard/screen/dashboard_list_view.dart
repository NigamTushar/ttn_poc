import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/screen/dashboard_stake_holder_card.dart';
import 'package:newers_world/dashboard/screen/dashboard_user_card.dart';
import 'package:newers_world/dashboard/widgets/dashboard_info_card.dart';
import 'package:newers_world/dashboard/widgets/newi_notifications_card.dart';
import 'package:newers_world/dashboard/widgets/page_header.dart';
import 'package:newers_world/dashboard/widgets/recognize_newer.dart';
import 'package:newers_world/dashboard/widgets/team_list.dart';
import 'package:newers_world/seoWidget/app_head.dart';
import 'package:seo_service/head_tag.dart';
import 'package:seo_service/html/seo_controller.dart';
import 'package:seo_service/html/tree/widget_tree.dart';

class DashboardListView extends StatelessWidget {
  const DashboardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Wrap(
        children: const [
          PageHeader(
              title: 'Dashboard',
              subtitle: 'Home / Dashboard',
              width: double.infinity),
          DashboardUserCard(),
          DashboardStackHolderCard(),
          NewiNotificationCardContent(),
          DashboardInfoCard(
            boxTitle: 'My ToDo',
            cardType: CardType.toDo,
          ),
          TeamList(),
          NewerRecognitionContentCard(
            width: 600,
          ),
          DashboardInfoCard(
            boxTitle: 'My WatchList',
            cardType: CardType.watchList,
          ),
          SizedBox(
            height: 60,
            width: 1,
          )
        ],
      ),
    );
  }
}
