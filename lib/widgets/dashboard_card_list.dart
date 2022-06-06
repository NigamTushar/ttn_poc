import 'package:flutter/material.dart';

class DashboardCardList extends StatelessWidget {
  const DashboardCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: const [
          ListTile(
            dense: true,
            minLeadingWidth: 20,
            leading: Text(
              '• ',
              style: TextStyle(color: Colors.grey),
            ),
            title: Text(
              'Clear 20 absence/s',
              style: TextStyle(fontSize: 16.0, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
