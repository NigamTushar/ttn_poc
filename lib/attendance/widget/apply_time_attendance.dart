import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newers_world/attendance/widget/info.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class ApplyTimeType extends StatelessWidget {
  const ApplyTimeType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: const Text(
          'Apply Time Type',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        initiallyExpanded: true,
        children: [
          SizedBox(
              height: 450,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: ScrollController(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Divider(
                        height: 1,
                        color: Colors.black38,
                      ),
                      _Body(),
                      // const Expanded(child: SizedBox.expand()),
                      // const Spacer(),
                      Divider(
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Submit'),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal[400]),
                          ),
                        ),
                      )
                    ]),
              ))
        ]);
  }
}

class _Body extends StatefulWidget {
  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  String reason = 'Select';
  String timeType = 'Select';
  final timeTypeList = [
    'Select',
    'Extra Working',
    'Casual',
    'Sick',
    'Paid',
    'Compensatory Off',
    'Optional',
    'Adoption',
    'Paternity',
    'Bereavement'
  ];

  final reasons = [
    'Select',
    'Planned Holiday',
    'Family Member Unwell',
    'Unwell/Doctor Visit',
    'Educational Leave',
    'Own Wedding',
    'Family Get-Together/Function/Wedding',
    'Friend\'s/Relative Wedding',
    'Offsite',
    'Personal Work(like Bank/Govt. Office visit etc)',
    'Festival Celebration',
    'Demise in Family',
    'Outstation/Hometown travel',
    'Home Shifting',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Info(
              message:
              'All Time types except "Work From Home" can be marked from this table. For applying "Work From Home", please ensure that you fill your timesheet.'),
          FormWidget(
            title: 'Time Type',
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey.shade500),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: DropdownButton(
                underline: const SizedBox.shrink(),
                isDense: true,
                borderRadius: BorderRadius.circular(10.0),
                isExpanded: true,
                value: timeType,
                items:
                timeTypeList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(
                      value,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    value: value,
                  );
                }).toList(),
                onChanged: (_) {
                  setState(() {
                    timeType = _.toString();
                  });
                },
              ),
            ),
          ),
          FormWidget(title: 'Duration', child: _Duration()),
          const FormWidget(title: 'Available Balance', child: Text('2')),
          FormWidget(
              title: 'Reason',
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade500),
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: DropdownButton(
                  underline: const SizedBox.shrink(),
                  isDense: true,
                  borderRadius: BorderRadius.circular(10.0),
                  isExpanded: true,
                  value: reason,
                  items: reasons.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      child: Text(
                        value,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.normal),
                      ),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (_) {
                    setState(() {
                      reason = _.toString();
                    });
                  },
                ),
              )),
          FormWidget(
              title: 'Comment',
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey.shade500),
                  ),
                  child: const TextField(
                    minLines: 3,
                    maxLines: 3,
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration.collapsed(hintText: ''),
                  )))
        ],
      ),
    );
  }
}

class _Duration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          _Date(),
          Container(padding: const EdgeInsets.all(3), child: const Text('to')),
          _Date(),
          Container(
            margin: const EdgeInsets.only(left: 4),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade300),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(color: Colors.black45),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FormWidget extends StatelessWidget {
  final String title;
  final Widget child;

  const FormWidget({Key? key, required this.title, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0),
      child: Flex(
        direction: ResponsiveWidget.isLargeScreen(context)
            ? Axis.horizontal
            : Axis.vertical,
        crossAxisAlignment: ResponsiveWidget.isLargeScreen(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Container(
              width: ResponsiveWidget.isLargeScreen(context)
                  ? MediaQuery.of(context).size.width / 10 / 2
                  : null,
              padding: EdgeInsets.only(top: 8),
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey.shade700),
              )),
          Container(
              padding: const EdgeInsets.only(top: 3.0),
              width: ResponsiveWidget.isLargeScreen(context)
                  ? MediaQuery.of(context).size.width / 1.8 / 2
                  : null,
              child: child)
        ],
      ),
    );
  }
}

class _Date extends StatefulWidget {
  @override
  State<_Date> createState() => _DateState();
}

class _DateState extends State<_Date> {
  String date = '12-Dec-2022';
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          if (defaultTargetPlatform == TargetPlatform.iOS) {
            bottomSheet(context, datePicker());
          } else {
            _selectDate(context);
          }
        },
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Row(
            children: [
              Container(
                color: Colors.grey[300],
                padding: const EdgeInsets.all(5),
                child: Icon(
                  Icons.calendar_month,
                  color: Colors.grey.shade500,
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  color: Colors.white,
                  child: Text(
                    date,
                    style: const TextStyle(color: Colors.black87),
                  ))
            ],
          ),
        ));
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        date =
        '${selectedDate.day}-${getMonth(selectedDate.month)}-${selectedDate.year}';
      });
    }
  }

  Future<void> bottomSheet(BuildContext context, Widget child,
      {double? height}) {
    return showModalBottomSheet(
        isScrollControlled: false,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13), topRight: Radius.circular(13))),
        backgroundColor: Colors.white,
        context: context,
        builder: (context) => SizedBox(
            height: height ?? MediaQuery.of(context).size.height / 3,
            child: child));
  }

  Widget datePicker() {
    return CupertinoDatePicker(
      initialDateTime: DateTime.now(),
      onDateTimeChanged: (DateTime newdate) {
        print(newdate);
        setState(() {
          date = newdate.day.toString() +
              '-' +
              getMonth(newdate.month) +
              '-' +
              newdate.year.toString();
        });
      },
      use24hFormat: true,
      maximumDate: DateTime(2091, 12, 30),
      minimumYear: 2010,
      maximumYear: 2091,
      mode: CupertinoDatePickerMode.date,
    );
  }

  String getMonth(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sept';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
    }
    ;
    return '';
  }
}
