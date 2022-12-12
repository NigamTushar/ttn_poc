import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class LeaveBalance extends StatelessWidget {
  const LeaveBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: ResponsiveWidget.isSmallScreen(context)
            ? Alignment.topCenter
            : Alignment.centerLeft,
        child: ExpansionTile(
            title: const Text(
              'Leave Balance',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            initiallyExpanded: true,
            children: [
              const Divider(
                color: Color(0XAA3d4344),
                thickness: 0.5,
                height: 1,
              ),
              // const SizedBox(height: 10),
              Container(
                height: 450,
                padding: const EdgeInsets.only(
                    left: 10, top: 10, right: 10, bottom: 25),
                child: ListTile(
                  title: _getLeaveView(),
                ),
              ),
            ]));
  }

  Widget _getLeaveView() {
    return Column(
      children: <Widget>[
        RichText(
          textAlign: TextAlign.left,
          text: const TextSpan(
              text: 'Note: ',
              style: StyleUtils.textStyleBoldDark,
              children: [
                TextSpan(
                    text: 'This is your balance as of today and does '
                        'not take into account your future applied time-offs.',
                    style: StyleUtils.textStyleNormal)
              ]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: 40.0,
          alignment: Alignment.centerLeft,
          child: getBalanceLeaveRowHeader(),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _getLeaveData().length,
            itemBuilder: (BuildContext context, int index) {
              final leaveData = _getLeaveData();
              return Column(
                children: [
                  const Divider(height: 1, thickness: 1),
                  getBalanceLeaveRow(leaveData, index),
                ],
              );
            },
          ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'View Leave Details',
                style: StyleUtils.textStyleNormal
                    .copyWith(color: const Color(0xFF1F82CE)),
              ),
            )),
      ],
    );
  }

  Row getBalanceLeaveRowHeader() {
    return Row(
      children: const <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Leave Type',
              style: StyleUtils.textStyleBoldDark,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Balance',
              style: StyleUtils.textStyleBoldDark,
            ),
          ),
        ),
      ],
    );
  }

  Row getBalanceLeaveRow(List<LeaveModel> leaveData, int index) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
              height: 40,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  leaveData[index].type,
                  style: StyleUtils.textStyleNormalDark,
                ),
              )),
        ),
        Expanded(
            child: Container(
          height: 40,
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              leaveData[index].count,
              style: StyleUtils.textStyleNormalDark,
            ),
          ),
        ))
      ],
    );
  }

  List<LeaveModel> _getLeaveData() {
    final List<LeaveModel> leaveData = <LeaveModel>[];
    leaveData.add(LeaveModel(type: 'Paid', count: '35'));
    leaveData.add(LeaveModel(type: 'Casual', count: '2'));
    leaveData.add(LeaveModel(type: 'Sick', count: '3'));
    leaveData.add(LeaveModel(type: 'Optional', count: '2'));
    leaveData.add(LeaveModel(type: 'Adoption', count: '5'));
    leaveData.add(LeaveModel(type: 'Paternity', count: '5'));
    leaveData.add(LeaveModel(type: 'Bereavement', count: '5'));
    return leaveData;
  }
}

class LeaveModel {
  late String type;
  late String count;

  LeaveModel({required this.type, required this.count});
}
