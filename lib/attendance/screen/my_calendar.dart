import 'package:flutter/material.dart';
import 'package:newers_world/attendance/model/leave_data_source.dart';
import 'package:newers_world/helper/responsive_widget.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyCalendar extends StatelessWidget {
  MyCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: ResponsiveWidget.isSmallScreen(context)
            ? Alignment.topCenter
            : Alignment.centerLeft,
        child: ExpansionTile(
            title: const Text('My Calendar',
                style: TextStyle(fontWeight: FontWeight.bold)),
            initiallyExpanded: true,
            children: [
              const Divider(
                color: Color(0XAA3d4344),
                thickness: 0.5,
                height: 1,
              ),
              Container(
                height: 450,
                padding: const EdgeInsets.only(
                    left: 5, top: 20, bottom: 25, right: 5),
                child: ListTile(
                  title: _getCalendar(),
                ),
              )
            ]));
  }

  final List<CalendarView> _allowedViews = <CalendarView>[
    CalendarView.day,
    CalendarView.week,
    CalendarView.workWeek,
    CalendarView.timelineDay,
    CalendarView.timelineWeek,
    CalendarView.timelineWorkWeek,
    CalendarView.month,
    CalendarView.schedule
  ];

  Widget _getCalendar() {
    return SfCalendar(
      view: CalendarView.month,
      showNavigationArrow: true,
      dataSource: LeaveDataSource(_getLeaveData()),
      showDatePickerButton: true,
      appointmentTextStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        letterSpacing: 2,
        fontSize: 5,
        color: Colors.white,
      ),
      monthViewSettings: const MonthViewSettings(
          agendaViewHeight: 40,
          agendaItemHeight: 40,
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          dayFormat: 'EEE',
          showAgenda: false,
          // showTrailingAndLeadingDates: false,
          navigationDirection: MonthNavigationDirection.horizontal),
      headerStyle: const CalendarHeaderStyle(textAlign: TextAlign.center),
      // allowedViews: _allowedViews,
      // cellBorderColor: Colors.deepOrange,
    );
  }

  List<Leave> _getLeaveData() {
    final List<Leave> leaves = <Leave>[];
    final DateTime today = DateTime.now();

    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 12));
    leaves
        .add(Leave('SICK', startTime, endTime, const Color(0xFF0A6406), false));

    final DateTime paidLeaveStartTime =
        DateTime(today.year, today.month, (today.day - 5), 9, 0, 0);
    final DateTime paidLeaveEndTime =
        paidLeaveStartTime.add(const Duration(hours: 12));
    leaves.add(Leave('PAID', paidLeaveStartTime, paidLeaveEndTime,
        const Color(0xFFE1325A), false));

    final DateTime casualLeaveStartTime =
        DateTime(today.year, today.month, (today.day - 10), 9, 0, 0);
    final DateTime casualLeaveEndTime =
        casualLeaveStartTime.add(const Duration(hours: 12));
    leaves.add(Leave('CASUAL', casualLeaveStartTime, casualLeaveEndTime,
        const Color(0xFFD7490B), false));
    return leaves;
  }
}
