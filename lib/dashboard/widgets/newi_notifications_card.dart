import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/helper/responsive_widget.dart';

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
              buildCheckBoxTile('Important Announcements', null, null),
              const SizedBox(
                height: 10,
              ),
              buildCheckBoxTile('My To-do', 'All Days', '11:00 AM'),
              const SizedBox(
                height: 10,
              ),
              buildCheckBoxTile('Inform my Absences', 'All Days', '2:00 PM'),
              const SizedBox(
                height: 10,
              ),
              buildCheckBoxTile('Quote of the Week', 'Mon', '10:00 AM'),
              const SizedBox(
                height: 10,
              ),
              buildCheckBoxTile('Joke of the Week', 'Fri', '4:00 PM'),
              const SizedBox(
                height: 10,
              ),
              buildCheckBoxTile('Birthday and Work Anniversaries in my team',
                  'All Days', '7:30 AM'),
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
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.all(5.0),
      constraints: const BoxConstraints(minWidth: 80),
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

  Container buildCheckBoxTile1(Widget titleWidget) {
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

  Widget buildCheckBoxTile(
      String title, String? firstButtonText, String? secondButtonText) {
    return Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 10),
        constraints: BoxConstraints(
            minWidth: ResponsiveWidget.isLargeScreen(context) ? 800 : 400),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[350],
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Checkbox(value: false, onChanged: (val) {}),
              Text(title),
              firstButtonText == null
                  ? const SizedBox.shrink()
                  : buildTag(
                      tagColor: Colors.teal,
                      tagString: firstButtonText,
                      tagIcon: Icons.calendar_month,
                    ),
              secondButtonText == null
                  ? const SizedBox.shrink()
                  : buildTag(
                      tagColor: Colors.orange,
                      tagString: secondButtonText,
                      tagIcon: Icons.access_time,
                    ),
            ],
          ),
        ));
  }
}
