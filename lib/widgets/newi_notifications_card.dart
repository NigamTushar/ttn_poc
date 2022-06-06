
import 'package:flutter/material.dart';

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
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Below is the list of Notifications. These will be pushed as per denoted time or as per event.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10.0),
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
                const Text('Inform my Absences'),
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
                const Text('Quote of the Week'),
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
                // SizedBox(
                //   width: (Platform.isIOS) ? MediaQuery.of(context).size.width : null,
                //     child: const Text(
                //   'Birthday and Work Anniversaries in my team',
                //   overflow: TextOverflow.ellipsis,
                //   maxLines: 2,
                // )),
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
