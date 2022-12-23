import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/widgets/dashboard_info_card.dart';

class ClickableList extends StatelessWidget {
  final CardType cardType;
  const ClickableList({Key? key, required this.cardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          ListTile(
            dense: true,
            minLeadingWidth: 20,
            leading: const Text(
              '• ',
              style: TextStyle(color: Colors.grey),
            ),
            title: Text(
              (cardType == CardType.watchList) ? 'Time off' : 'Policy Manual',
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () {
              print('Time off');
            },
          )
        ],
      ),
    );
  }
}
