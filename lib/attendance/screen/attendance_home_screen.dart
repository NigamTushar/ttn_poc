import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newers_world/attendance/widget/apply_time_attendance.dart';
import 'package:newers_world/attendance/widget/my_info_attendance.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/dashboard/widgets/page_header.dart';

class AttendanceHomeScreen extends StatelessWidget {
  const AttendanceHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: ScrollController(),
        child: Wrap(children: const [
          PageHeader(
            width: double.infinity,
            title: 'Attendance',
            subtitle: 'Home / Attendance',
          ),
          ConstrainedTile(child: ApplyTimeType()),
          ConstrainedTile(child: MyInfo())
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
            decoration: StyleUtils.cardDecoration,
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            child: child),
        constraints: const BoxConstraints(minWidth: 200, maxWidth: 680));
  }
}
