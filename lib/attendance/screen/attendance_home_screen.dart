import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newers_world/attendance/screen/leave_balance.dart';
import 'package:newers_world/attendance/screen/my_calendar.dart';
import 'package:newers_world/attendance/widget/apply_time_attendance.dart';
import 'package:newers_world/attendance/widget/my_info_attendance.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/dashboard/widgets/page_header.dart';
import 'package:newers_world/helper/responsive_widget.dart';
import 'package:newers_world/seoWidget/app_meta.dart';
import 'package:newers_world/widgets/container_screen.dart';
import 'package:seo_service/html/seo_controller.dart';
import 'package:seo_service/html/tree/widget_tree.dart';

class AttendanceHome extends StatelessWidget {
  const AttendanceHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerScreen(child: Scaffold(
      body: SeoController(
        tree: WidgetTree(context: context),
        child: AppMeta(
          title: 'Newer Attendance',
          description: 'Newer Attendance and Leave management, Apply Leave, Check Leave Balance, Personal Calendar.',
          author: 'To The New',
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Wrap(
              children: [
                const PageHeader(
                  width: double.infinity,
                  title: 'Attendance',
                  subtitle: 'Home / Attendance',
                ),
                const ConstrainedTile(child: ApplyTimeType()),
                const ConstrainedTile(child: MyInfo()),
                ConstrainedTile(child: MyCalendar()),
                const ConstrainedTile(child: LeaveBalance())
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class ConstrainedTile extends StatelessWidget {
  final Widget child;

  const ConstrainedTile({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      child: Container(
          decoration: StyleUtils.cardShadowDecoration,
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          child: child),
      constraints: BoxConstraints(
          minWidth: 200,
          maxWidth: ResponsiveWidget.isLargeScreen(context) ? 700 : 500),
    );
  }
}
