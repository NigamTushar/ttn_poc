import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newers_world/helper/constants.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class DashboardHomeScreen extends StatelessWidget {
  const DashboardHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 100, maxWidth: 900),
      child: OverflowBar(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 100, maxWidth: 300),
            child: Align(
                alignment: ResponsiveWidget.isSmallScreen(context)?Alignment.topCenter:Alignment.centerLeft,
                child: userDetailContact()),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 100, maxWidth: 300),
            child: Container(
                height: 300,
                margin: EdgeInsets.only(
                    left: ResponsiveWidget.isSmallScreen(context) ? 20 : 0),
                child: userDetailDescription()),
          ),
        ],
      ),
    );
  }

  // MARK: - user detail contact UI - upper part
  Widget userDetailContact() {
    return Column(
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
        SizedBox(
          height: 40,
        )
      ],
    );
  }

  Widget userDetailDescription() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rahul Sharma',
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
            ],
          ),
        ),
        Align(alignment: Alignment.bottomCenter, child: getProfileButton()),
      ],
    );
  }

  Widget getProfileButton() {
    return Container(
      padding: const EdgeInsets.only(
          bottom: 10.0,
          right: 10.0), // To hide the button focus area in case of web.
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
    );
  }
}
