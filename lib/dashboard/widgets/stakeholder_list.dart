import 'package:flutter/material.dart';
import 'package:newers_world/seoWidget/app_image.dart';
import 'package:newers_world/seoWidget/app_text.dart';

class StakeholdersList extends StatelessWidget {
  const StakeholdersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            leading: const AppImage(
              radius: 40,
              src: 'https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=robohash&r=x',
              alt: 'Stakeholder Profile Image',
            ),
            title: const AppText(text: 'Ankit Nigam', style: TextStyle()),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppText(
                  text: 'Technical Lead',
                  headingElement: HeadingText.h2,
                  style: TextStyle(),
                ),
                AppText(
                  text: 'Mentoring and Reporting Manager',
                  headingElement: HeadingText.h2,
                  style: TextStyle(),
                ),
              ],
            ),
          ),
          Container(
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=identicon&r=x'),
              radius: 40.0,
            ),
            title: const Text('Kritika Anand'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppText(
                  text: 'Executive - Human Resource',
                  headingElement: HeadingText.h2,
                  style: TextStyle(),
                ),
                AppText(
                  text: 'HR Spoc',
                  headingElement: HeadingText.h2,
                  style: TextStyle(),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=robohash&r=x'),
              radius: 40.0,
            ),
            title: const Text('Ankit Nigam'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Technical Lead'),
                Text('Mentoring and Reporting Manager'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=identicon&r=x'),
              radius: 40.0,
            ),
            title: const Text('Kritika Anand'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Executive - Human Resource'),
                Text('HR Spoc'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=robohash&r=x'),
              radius: 40.0,
            ),
            title: const Text('Ankit Nigam'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Technical Lead'),
                Text('Mentoring and Reporting Manager'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=identicon&r=x'),
              radius: 40.0,
            ),
            title: const Text('Kritika Anand'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Executive - Human Resource'),
                Text('HR Spoc'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=robohash&r=x'),
              radius: 40.0,
            ),
            title: const Text('Ankit Nigam'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Technical Lead'),
                Text('Mentoring and Reporting Manager'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=identicon&r=x'),
              radius: 40.0,
            ),
            title: const Text('Kritika Anand'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Executive - Human Resource'),
                Text('HR Spoc'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
