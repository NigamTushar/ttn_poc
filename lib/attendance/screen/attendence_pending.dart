import 'package:flutter/material.dart';
import 'package:newers_world/attendance/widget/info.dart';

class Pending extends StatelessWidget {
  final bool showInfoMessage;

  const Pending({Key? key, required this.showInfoMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 380,
        child: SingleChildScrollView(
          controller: ScrollController(),
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 10,
            ),
            if (showInfoMessage) ...{
              const Info(
                  message:
                      'Timesheets for dates where "Home" location is selected will reflect as "Work from Home" under the Pending tab until they are approved at the end of the week.'),
            },
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Duration',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Time-Type',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Action',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
            ),
            ...getMockDates().map((e) => AttendanceItem(title: e)).toList()
          ]),
        ));
  }

  List<String> getMockDates() {
    List<String> list = [];
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    list.add('07-Dec-2022 to 07-Dec-2022');
    return list;
  }
}

class AttendanceItem extends StatelessWidget {
  final String title;

  const AttendanceItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(title,
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '1d',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                )),
            const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Work from Home',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.comment,
                        color: Colors.teal[400],
                      ),
                      Icon(
                        Icons.close,
                        color: Colors.teal[400],
                      )
                    ],
                  ),
                )),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(
          height: 1,
          color: Colors.grey,
        )
      ],
    );
  }
}
