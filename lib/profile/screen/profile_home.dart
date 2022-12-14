import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newers_world/dashboard/screen/dashboard_stake_holder_card.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/dashboard/widgets/profile_expandable_list.dart';
import 'package:newers_world/dashboard/widgets/profile_list.dart';
import 'package:newers_world/helper/responsive_widget.dart';
import 'package:newers_world/profile/screen/emp_info.dart';
import 'package:newers_world/profile/screen/personal_info.dart';
import 'package:newers_world/profile/screen/profile_details.dart';
import 'package:newers_world/screens/profile_header.dart';
/*import 'package:newers_world/dashboard_screens/dashboard_home_screen.dart';
import 'package:newers_world/widgets/app_drawer.dart';
import 'package:newers_world/widgets/page_header.dart';
import 'package:newers_world/widgets/profile_expandable_list.dart';
import 'package:newers_world/widgets/profile_list.dart';
import 'package:newers_world/widgets/stakeholder_list.dart';*/


final empSnapShots = {'Legal Entity': 'TO THE NEW Private Limited','Business Unit':'Australia & New Zealand (ANZ)','Function':'Delivery','Competency':'Android','Designation':'Senior Software Engineer'};
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

final profileData = {
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
};
class ProfileHome extends StatefulWidget {
  const ProfileHome({Key? key}) : super(key: key);

  @override
  State<ProfileHome> createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Wrap(
        children:  [
          ProfileHeader(),
          // EmployeeInfo(),
          // PersonalInfo(),
          ProfileDetails(),
        ],
      ),
    );
  }
}
