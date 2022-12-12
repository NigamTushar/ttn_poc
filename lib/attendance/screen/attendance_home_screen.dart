import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newers_world/attendance/screen/leave_balance.dart';
import 'package:newers_world/attendance/screen/my_calendar.dart';
import 'package:newers_world/attendance/widget/apply_time_attendance.dart';
import 'package:newers_world/attendance/widget/my_info_attendance.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/dashboard/widgets/page_header.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class AttendanceHomeScreen extends StatelessWidget {
  const AttendanceHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: ScrollController(),
        child: Wrap(children: [
          const PageHeader(
            width: double.infinity,
            title: 'Attendance',
            subtitle: 'Home / Attendance',
          ),
          const ConstrainedTile(child: ApplyTimeType()),
          const ConstrainedTile(child: MyInfo()),
          ConstrainedTile(child: MyCalendar()),
          const ConstrainedTile(child: LeaveBalance())
        ]));
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
