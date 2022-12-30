import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/widgets/page_header.dart';
import 'package:newers_world/profile/profile_model.dart';
import 'package:newers_world/screens/profile_header.dart';
import 'package:newers_world/seoWidget/app_meta.dart';
import 'package:newers_world/widgets/container_screen.dart';
import 'package:seo_service/html/seo_controller.dart';
import 'package:seo_service/html/tree/widget_tree.dart';

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

class ProfileHome extends StatefulWidget {
  final int id;

  const ProfileHome({Key? key, @pathParam required this.id}) : super(key: key);

  @override
  State<ProfileHome> createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  Widget build(BuildContext context) {
    ProfileModel? profileModel = getProfileData();
    return profileModel != null
        ? ContainerScreen(
            child: Scaffold(
              body: SeoController(
                tree: WidgetTree(context: context),
                child: AppMeta(
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
                        children: [
                          PageHeader(
                            width: double.infinity,
                            title: 'Profile',
                            subtitle:
                                "Home / ${profileModel.profileName}'s Profile",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: ProfileHeader(
                              profileName: profileModel.profileName,
                              profileDesignation:
                                  profileModel.profileDesignation,
                              profileImageUrl: profileModel.profileImageUrl,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        : const SizedBox();
  }

  ProfileModel? getProfileData() {
    ProfileModel? profileModel;
    switch (widget.id) {
      case 1:
        {
          profileModel = ProfileModel(
              profileName: ankitNigam,
              profileDesignation: techLead,
              profileImageUrl: ankitNigamProfileUrl);
        }
        break;
      case 2:
        {
          profileModel = ProfileModel(
              profileName: kritikaAnand,
              profileDesignation: excHR,
              profileImageUrl: kritikaAnandProfileUrl);
        }
        break;
      case 3:
        {
          profileModel = ProfileModel(
              profileName: saurabhSablok,
              profileDesignation: projectManager,
              profileImageUrl: saurabhSablokProfileUrl);
        }
        break;
      case 4:
        {
          profileModel = ProfileModel(
              profileName: ashishKumar,
              profileDesignation: associateTechLead,
              profileImageUrl: ashishKumarProfileUrl);
        }
        break;
      case 5:
        {
          profileModel = ProfileModel(
              profileName: lokeshKumar,
              profileDesignation: associateTechLead,
              profileImageUrl: lokeshKumarProfileUrl);
        }
        break;
    }
    return profileModel;
  }
}
