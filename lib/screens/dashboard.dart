import 'package:flutter/material.dart';

import '../widgets/user_detail_card.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text('App bar'),
        backgroundColor: Colors.white70,
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const UserDetailCard(),

          const SizedBox(height: 10,),

          // Stakeholders card

          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Text(
                    'My Stakeholders',
                    style: TextStyle(fontSize: 20,),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                ),
                ListTile()
              ],
            ),
          )
        ],
      ),
    );
  }
}
