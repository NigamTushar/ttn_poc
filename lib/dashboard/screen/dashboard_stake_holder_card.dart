import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/dashboard/widgets/stakeholder_list.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class DashboardStackHolderCard extends StatelessWidget {
  const DashboardStackHolderCard({Key? key}) : super(key: key);

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
            child: const StakeholdersList()));
  }
}
