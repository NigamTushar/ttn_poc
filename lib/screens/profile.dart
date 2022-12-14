import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newers_world/dashboard/screen/dashboard_stake_holder_card.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/screens/profile_header.dart';
/*import 'package:newers_world/dashboard_screens/dashboard_home_screen.dart';
import 'package:newers_world/widgets/app_drawer.dart';
import 'package:newers_world/widgets/page_header.dart';
import 'package:newers_world/widgets/profile_expandable_list.dart';
import 'package:newers_world/widgets/profile_list.dart';
import 'package:newers_world/widgets/stakeholder_list.dart';*/

import '../dashboard/widgets/app_drawer.dart';
import '../dashboard/widgets/page_header.dart';
import '../dashboard/widgets/profile_expandable_list.dart';
import '../dashboard/widgets/profile_list.dart';
import '../helper/responsive_widget.dart';

final empSnapShots = {
  'Legal Entity': 'TO THE NEW Private Limited',
  'Business Unit': 'Australia & New Zealand (ANZ)',
  'Function': 'Delivery',
  'Competency': 'Android',
  'Designation': 'Senior Software Engineer'
};
final List<Map<String, String>> listOfColumns = [
  {
    "Name": "quick brown frog jump over the lazy dog",
    "Number": "1",
    "State": "Yes"
  },
  {"Name": "lokesh", "Number": "2", "State": "no"},
  {"Name": "BBBBBB", "Number": "2", "State": "no"},
  {"Name": "BBBBBB", "Number": "2", "State": "no"},
  {"Name": "BBBBBB", "Number": "2", "State": "no"},
  {"Name": "BBBBBB", "Number": "2", "State": "no"},
  {"Name": "BBBBBB", "Number": "2", "State": "no"},
  {"Name": "BBBBBB", "Number": "2", "State": "no"},
  {"Name": "CCCCCC", "Number": "3", "State": "Yes"}
];

/*final profileData = {
  'Legal Entity': ['TO THE NEW Private Limited', 'AABB'],
  'Business Unit': ['Australia & New Zealand (ANZ)', 'CC'],
  'Let test': ['Australia & New Zealand (ANZ), we are good mate', 'CC']
};

final profileData1 = {
  'Legal Entity': ['TO THE NEW Private Limited', 'AABB'],
  'Business Unit': ['Australia & New Zealand (ANZ)', 'CC'],
  'Let test': ['Australia & New Zealand (ANZ), we are good mate', 'CC'],
  'Let test1': ['Australia & New Zealand (ANZ), we are good mate', 'CC'],
  'Let test2': ['Australia & New Zealand (ANZ), we are good mate', 'CC'],
  'Let test3': ['Australia & New Zealand (ANZ), we are good mate', 'CC']
};*/
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var _unHideDrawer = true;

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery
        .of(context)
        .size;
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Wrap(
        children: [
          ProfileHeader(onTabChange: (index) {}),
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: ResponsiveWidget.isLargeScreen(context) ? 400 : 600,
                maxWidth: 600,
                maxHeight: ResponsiveWidget.isLargeScreen(context) ? 400 : 400,
                minHeight: ResponsiveWidget.isLargeScreen(context) ? 400 : 400),
            child: Container(
              decoration: StyleUtils.cardDecoration,
              // width: _screenSize.width/2.4,
              // color: Colors.white,
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.all(20.0),
              child: ExpandableListView(
                title: "Employement Snapshot",
                profileInfoMap: empSnapShots,
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: ResponsiveWidget.isLargeScreen(context) ? 400 : 600,
                maxWidth: 600,
                maxHeight: ResponsiveWidget.isLargeScreen(context) ? 400 : 400,
                minHeight: ResponsiveWidget.isLargeScreen(context) ? 400 : 400),
            child: Container(
              decoration: StyleUtils.cardDecoration,
              // width: _screenSize.width/2.4,
              // color: Colors.white,
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.all(20.0),
              child: ExpandableListView(
                title: "Employement Snapshot",
                profileInfoMap: empSnapShots,
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: ResponsiveWidget.isLargeScreen(context) ? 400 : 200,
              maxWidth: _screenSize.width,
            ),
            child: Container(
              decoration: StyleUtils.cardDecoration,
              // width: _screenSize.width,
              // color: Colors.white,
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.all(20.0),
              child: ProfileListView(
                title: "Profile",
                profileInfoMap: listOfColumns,
                heading: ['d'],
              ),
            ),
          )
        ],
      ),
    );
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Row(
            children: [
              if (_screenSize.width > 760 && _unHideDrawer) appDrawer(),
              Expanded(
                child: Scaffold(
                  backgroundColor: Colors.grey[300],
                  appBar: AppBar(
                    leading: Builder(builder: (BuildContext context) {
                      return IconButton(
                        onPressed: () {
                          if (_screenSize.width > 760) {
                            setState(() {
                              _unHideDrawer = !_unHideDrawer;
                            });
                          } else {
                            Scaffold.of(context).openDrawer();
                          }
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.green,
                        ),
                      );
                    }),
                    title: const Text(
                      'App bar',
                      // style: TextStyle(color: Colors.blueGrey),
                    ),
                    backgroundColor: Colors.white70,
                    elevation: 0,
                  ),
                  drawer: appDrawer(),
                  body: SingleChildScrollView(
                    controller: ScrollController(),
                    child: Wrap(
                      children: [
                        PageHeader(
                          width: _screenSize.width,
                        ),
                        Container(
                          width: _screenSize.width / 2.4,
                          color: Colors.white,
                          margin: const EdgeInsets.only(top: 20, left: 20),
                          padding: const EdgeInsets.all(20.0),
                          child: ExpandableListView(
                            title: "Employement Snapshot",
                            profileInfoMap: empSnapShots,
                          ),
                        ),
                        Container(
                          width: _screenSize.width / 2.4,
                          color: Colors.white,
                          margin: const EdgeInsets.only(top: 20, left: 20),
                          padding: const EdgeInsets.all(20.0),
                          child: ExpandableListView(
                            title: "Employement Snapshot",
                            profileInfoMap: empSnapShots,
                          ),
                        ),
                        Container(
                          width: _screenSize.width,
                          color: Colors.white,
                          margin: const EdgeInsets.only(top: 20, left: 20),
                          padding: const EdgeInsets.all(20.0),
                          child: ProfileListView(
                            title: "Profile",
                            profileInfoMap: listOfColumns,
                            heading: ['d'],
                          ),
                        ),
                        /*Container(
                          width: _screenSize.width,
                          color: Colors.white,
                          margin: const EdgeInsets.only(top: 20,left: 20),
                          padding: const EdgeInsets.all(20.0),
                          child: ProfileListView(title: "Profile", profileInfoMap: profileData1,heading: ['d'],),
                        ),*/
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
