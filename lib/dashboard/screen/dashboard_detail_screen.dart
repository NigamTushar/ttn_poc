import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/screen/dashboard_home_screen.dart';
import 'package:newers_world/dashboard/widgets/page_header.dart';
import 'package:newers_world/dashboard/widgets/stakeholder_list.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class DashboardDetailScreen extends StatelessWidget {
  const DashboardDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Wrap(
        children: [
          const PageHeader(width: double.infinity),
          const DashboardHomeScreen(),
          ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth:
                      ResponsiveWidget.isLargeScreen(context) ? 400 : 600,
                  maxWidth: 600,
                  maxHeight:
                      ResponsiveWidget.isLargeScreen(context) ? 400 : 400,
                  minHeight:
                      ResponsiveWidget.isLargeScreen(context) ? 400 : 400),
              child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: ResponsiveWidget.isLargeScreen(context) ? 20 : 0,
                      bottom:
                          ResponsiveWidget.isLargeScreen(context) ? 20 : 0),
                  color: Colors.white,
                  child: const StakeholdersList())),
        ],
      ),
    );
  }
}
