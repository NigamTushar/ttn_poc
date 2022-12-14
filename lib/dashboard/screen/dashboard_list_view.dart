import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/screen/dashboard_user_card.dart';
import 'package:newers_world/dashboard/screen/dashboard_stake_holder_card.dart';
import 'package:newers_world/dashboard/widgets/dashboard_info_card.dart';
import 'package:newers_world/dashboard/widgets/newi_notifications_card.dart';
import 'package:newers_world/dashboard/widgets/page_header.dart';
import 'package:newers_world/dashboard/widgets/recognize_newer.dart';
import 'package:newers_world/dashboard/widgets/team_list.dart';

class DashboardListView extends StatelessWidget {
  const DashboardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Wrap(
        children: const [
          PageHeader(width: double.infinity),
          DashboardUserCard(),
          DashboardStackHolderCard(),
          NewiNotificationCardContent(),
          DashboardInfoCard(boxTitle: 'My ToDo',cardType: CardType.toDo,),
          TeamList(),
          NewerRecognitionContentCard(width: 600,),
          DashboardInfoCard(boxTitle: 'My WatchList',cardType: CardType.watchList,),
          SizedBox(height: 60,width: 1,)
        ],
      ),
    );
  }
}
