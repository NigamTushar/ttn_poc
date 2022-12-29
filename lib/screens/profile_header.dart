import 'package:flutter/material.dart';
import 'package:newers_world/helper/constants.dart';
import 'package:newers_world/helper/responsive_widget.dart';
import 'package:newers_world/profile/screen/emp_info.dart';
import 'package:newers_world/profile/screen/personal_info.dart';
import 'package:newers_world/profile/screen/profile_details.dart';
import 'package:newers_world/seoWidget/app_image.dart';
import 'package:newers_world/seoWidget/app_text.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProfileHeaderState();
}

class ProfileHeaderState extends State<ProfileHeader>
    with TickerProviderStateMixin {
  late TabController _tabController;
  TabSelection selectedTab = TabSelection.employment;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    _tabController.addListener(() {
      switch (_tabController.index) {
        case 0:
          {
            selectedTab = TabSelection.employment;
            break;
          }
        case 1:
          {
            selectedTab = TabSelection.personal;
            break;
          }
        case 2:
          {
            selectedTab = TabSelection.profileData;
            break;
          }
        default:
          selectedTab = TabSelection.employment;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          constraints: const BoxConstraints(minWidth: 100),
          decoration: const BoxDecoration(color: Colors.white),
          child: SizedBox(
            height: ResponsiveWidget.isLargeScreen(context) ? 200 : 300,
            child: Stack(
              children: <Widget>[
                Container(
                  height: ResponsiveWidget.isLargeScreen(context) ? 80 : 00,
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: ResponsiveWidget.isLargeScreen(context) ? 120 : 240,
                  padding: const EdgeInsets.all(5.0),
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.black26,
                        Colors.black45,
                        Colors.black54
                      ],
                    ),
                  ),
                ),
                ResponsiveWidget.isLargeScreen(context)
                    ? getOrgChar(context)
                    : Align(
                        alignment: Alignment.topRight,
                        child: getOrgChar(context),
                      ),
                Positioned(
                  top: ResponsiveWidget.isLargeScreen(context) ? 60 : 160,
                  left: ResponsiveWidget.isLargeScreen(context) ? 140 : 25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: 'Rahul Sharma',
                        style: TextStyle(
                            fontSize: Constants.headingFontSize,
                            color: Colors.white),
                      ),
                      AppText(
                        text: 'Software Engineer',
                        headingElement: HeadingText.h2,
                        style: TextStyle(
                            fontSize: Constants.subHheadingFontSize,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: ResponsiveWidget.isLargeScreen(context) ? 50 : 40,
                  left: ResponsiveWidget.isLargeScreen(context) ? 0 : 20,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 5, color: Colors.white),
                          borderRadius:
                              BorderRadius.circular(100), //<-- SEE HERE
                        ),
                        child: const AppImage(
                          radius: 55,
                          src: 'https://picsum.photos/250?image=2',
                          alt: 'Newer Profile Image',
                        ),
                      ),
                      if (ResponsiveWidget.isLargeScreen(context)) ...[
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5, left: 10),
                              decoration:
                                  const BoxDecoration(color: Colors.green),
                              height: 5.0,
                              width: 90,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2, left: 5),
                              child: Text(
                                '94%',
                                style: TextStyle(
                                    fontSize: Constants.normalTextFontSize,
                                    color: Colors.black87),
                              ),
                            ),
                          ],
                        ),
                      ]
                    ],
                  ),
                ),
                Positioned(
                  height: ResponsiveWidget.isLargeScreen(context) ? 50 : 45,
                  top: ResponsiveWidget.isLargeScreen(context) ? 150 : 255,
                  left: ResponsiveWidget.isLargeScreen(context) ? 150 : 20,
                  child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.green,
                    indicatorWeight: 3,
                    labelColor: Colors.green,
                    controller: _tabController,
                    tabs: const [
                      AppText(
                          text: 'Employment Information', style: TextStyle()),
                      AppText(text: 'Personal Information', style: TextStyle()),
                      AppText(text: 'Profile Details', style: TextStyle()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        getProfilePage()
      ],
    );
  }

  Widget getOrgChar(BuildContext context) {
    return Positioned(
      top: ResponsiveWidget.isLargeScreen(context) ? 50 : 40,
      left: ResponsiveWidget.isLargeScreen(context) ? 320 : 20,
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Icon(Icons.add_chart),
      ),
    );
  }

  Widget getProfilePage() {
    if (selectedTab == TabSelection.employment) {
      return const EmployeeInfo();
    } else if (selectedTab == TabSelection.personal) {
      return const PersonalInfo();
    } else if (selectedTab == TabSelection.profileData) {
      return const ProfileDetails();
    } else {
      return const EmployeeInfo();
    }
  }
}

enum TabSelection { employment, personal, profileData }
