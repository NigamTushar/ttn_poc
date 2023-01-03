import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/widgets/page_header.dart';
import 'package:newers_world/drawer/widgets/drawer_pages.dart';
import 'package:newers_world/screens/profile_header.dart';
import 'package:newers_world/seoWidget/app_head.dart';
import 'package:newers_world/widgets/container_screen.dart';

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

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return ContainerScreen(
      child: AppHead(
        title:
            'Newer Profile, Personal Information and Details, Document Center. TO THE NEW',
        description:
            'Newer Employment Information, Personal Information, Profile Details, Document Center, In-Out Details. TO THE NEW',
        author: 'To The New',
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            controller: ScrollController(),
            child: Wrap(
              children: const [
                PageHeader(
                  width: double.infinity,
                  title: 'Profile',
                  subtitle: 'Home / Profile',
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: ProfileHeader(
                    profileName: dashboardProfileName,
                    profileDesignation: profileDesignation,
                    profileImageUrl: dashboardProfileImage,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
