import 'package:flutter/material.dart';
import 'package:newers_world/drawer/widgets/drawer_pages.dart';
import 'package:newers_world/helper/breakpoint.dart';
import 'package:newers_world/helper/constants.dart';

class UserDetailCard extends StatelessWidget {
  final double width;

  const UserDetailCard({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final Breakpoint breakpoint = Breakpoint.fromConstraints(
        constraints,
        type: BreakType.material,
      );
      return Container(
        decoration: const BoxDecoration(color: Colors.white),
        width: width,
        margin: EdgeInsets.zero,
        child: Wrap(
          children: [
            const SizedBox(
              height: 20.0,
            ),

            // Employee Experience
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('0y 9m'),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  )
                ],
              ),
            ),

            // Employee Details
            OverflowBar(
              children: [
                userDetailContact(),
                userDetailDescription(size.width),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      );
    });
  }
}

// MARK: - user detail contact UI - upper part
Container userDetailContact() {
  return Container(
    // color: Colors.red,
    height: 215,
    width: 300,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 5.0,
        ),
        const CircleAvatar(
          backgroundColor: Colors.black,
          radius: 60.0,
        ),
        const SizedBox(
          height: 25.0,
        ),
        SizedBox(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.phone),
                    Text('Call'),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.mail),
                    Text('Email'),
                  ],
                ),
              ),
            ],
          ),
        ),
        // This will become the progress bar for profile completion rate
        const SizedBox(
          height: 5.0,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.green),
          height: 2.0,
          width: 150,
        ),
      ],
    ),
  );
}

// MARK:- user detail description - lower part
Container userDetailDescription(double size) {
  return Container(
    // color: Colors.green,
    constraints: const BoxConstraints(
      minWidth: 300,
      minHeight: 300,
    ),
    height: 215,
    padding: const EdgeInsets.all(8.0),
    margin: const EdgeInsets.only(top: 10.0, left: 10.0),
    width: size * 0.25,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dashboardProfileName,
          style: TextStyle(
            fontSize: Constants.headingFontSize,
          ),
        ),
        Text(
          'Software Engineer',
          style: TextStyle(
            fontSize: Constants.subHheadingFontSize,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          leading: const Icon(Icons.house_outlined),
          title: Text(
            'To The New Private Limited',
            style: TextStyle(fontSize: Constants.normalTextFontSize),
          ),
          iconColor: Colors.black,
          contentPadding: EdgeInsets.zero,
          // EdgeInsets.only(left: 0.0, top: 0.0, bottom: 0.0),
          minLeadingWidth: 15,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          leading: const Icon(Icons.business),
          title: Text(
            'Digital Native Businesses(DNB)',
            style: TextStyle(fontSize: Constants.normalTextFontSize),
          ),
          iconColor: Colors.black,
          contentPadding:
              const EdgeInsets.only(left: 0.0, top: 0.0, bottom: 0.0),
          minLeadingWidth: 15,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          leading: const Icon(Icons.business_center_outlined),
          title: Text(
            'iOS',
            style: TextStyle(fontSize: Constants.normalTextFontSize),
          ),
          iconColor: Colors.black,
          contentPadding: const EdgeInsets.only(left: 0.0),
          minLeadingWidth: 15,
        ),
        ListTile(
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          dense: true,
          leading: const Icon(Icons.card_membership),
          title: Text(
            '4659',
            style: TextStyle(fontSize: Constants.normalTextFontSize),
          ),
          iconColor: Colors.black,
          contentPadding: const EdgeInsets.only(left: 0.0),
          minLeadingWidth: 15,
        ),

        // profile and organisation buttons
        Container(
          padding: const EdgeInsets.only(
              bottom: 10.0,
              right: 10.0), // To hide the button focus area in case of web.
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  print('Organisation chart');
                },
                icon: const Icon(Icons.bakery_dining),
              ),
              IconButton(
                onPressed: () {
                  print('Employee profile page');
                },
                icon: const Icon(Icons.person_outline_rounded),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
