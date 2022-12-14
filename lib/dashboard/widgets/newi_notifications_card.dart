import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';

class NewiNotificationCardContent extends StatefulWidget {
  const NewiNotificationCardContent({Key? key}) : super(key: key);

  @override
  State<NewiNotificationCardContent> createState() =>
      _NewiNotificationCardContentState();
}

class _NewiNotificationCardContentState
    extends State<NewiNotificationCardContent> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
          minWidth: 200, maxWidth: 800, maxHeight: 400, minHeight: 400),
      child: Container(
        decoration: StyleUtils.cardDecoration,
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Wrap(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  'Below is the list of Notifications. These will be pushed as per denoted time or as per event.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              buildCheckBoxTile(
                const Text('Important Announcements'),
              ),
              const SizedBox(
                height: 10,
              ),
              buildCheckBoxTile(
                Row(
                  children: [
                    const Text('My To-do'),
                    const SizedBox(
                      width: 20,
                    ),
                    buildTag(
                      tagColor: Colors.teal,
                      tagString: 'All Days',
                      tagIcon: Icons.calendar_month,
                    ),
                    buildTag(
                      tagColor: Colors.orange,
                      tagString: '11:00 AM',
                      tagIcon: Icons.access_time,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              buildCheckBoxTile(
                Row(
                  children: [
                    const Expanded(child: Text('Inform my Absences')),
                    const SizedBox(
                      width: 20,
                    ),
                    buildTag(
                      tagColor: Colors.teal,
                      tagString: 'All Days',
                      tagIcon: Icons.calendar_month,
                    ),
                    buildTag(
                      tagColor: Colors.orange,
                      tagString: '2:00 PM',
                      tagIcon: Icons.access_time,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              buildCheckBoxTile(
                Row(
                  children: [
                    const Expanded(child: Text('Quote of the Week')),
                    const SizedBox(
                      width: 20,
                    ),
                    buildTag(
                      tagColor: Colors.teal,
                      tagString: 'Mon',
                      tagIcon: Icons.calendar_month,
                    ),
                    buildTag(
                      tagColor: Colors.orange,
                      tagString: '10:00 AM',
                      tagIcon: Icons.access_time,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              buildCheckBoxTile(
                Row(
                  children: [
                    const Text('Joke of the Week'),
                    const SizedBox(
                      width: 20,
                    ),
                    buildTag(
                      tagColor: Colors.teal,
                      tagString: 'Fri',
                      tagIcon: Icons.calendar_month,
                    ),
                    buildTag(
                      tagColor: Colors.orange,
                      tagString: '4:00 PM',
                      tagIcon: Icons.access_time,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              buildCheckBoxTile(
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Birthday and Work Anniversaries in my team',
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    buildTag(
                      tagColor: Colors.teal,
                      tagString: 'All Days',
                      tagIcon: Icons.calendar_month,
                    ),
                    buildTag(
                      tagColor: Colors.orange,
                      tagString: '7:30 AM',
                      tagIcon: Icons.access_time,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildTag(
      {required Color tagColor,
      required String tagString,
      required IconData tagIcon}) {
    return Container(
      // width: 100,
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: tagColor,
        borderRadius: BorderRadius.circular(2.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            tagIcon,
            size: 13,
            color: Colors.white,
          ),
          Text(
            tagString,
            style: const TextStyle(fontSize: 13, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Container buildCheckBoxTile(Widget titleWidget) {
    return Container(
      padding: const EdgeInsets.only(left: 12.0),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[350],
      ),
      height: 45,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0)),
          color: Color(0xffeeeeee),
        ),
        child: CheckboxListTile(
            // isThreeLine: true,
            controlAffinity: ListTileControlAffinity.leading,
            title: titleWidget,
            value: value,
            onChanged: (newValue) => setState(() {
                  value = newValue!;
                })),
      ),
    );
  }
}
