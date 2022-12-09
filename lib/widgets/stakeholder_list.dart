import 'package:flutter/material.dart';

class StakeholdersList extends StatelessWidget {
  const StakeholdersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.black,
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
              backgroundColor: Colors.black,
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
              backgroundColor: Colors.black,
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
              backgroundColor: Colors.black,
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
          ), ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.black,
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
              backgroundColor: Colors.black,
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
              backgroundColor: Colors.black,
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
              backgroundColor: Colors.black,
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
