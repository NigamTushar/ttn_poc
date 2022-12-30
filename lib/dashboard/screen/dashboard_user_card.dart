import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/drawer/widgets/drawer_pages.dart';
import 'package:newers_world/helper/constants.dart';
import 'package:newers_world/helper/responsive_widget.dart';
import 'package:newers_world/seoWidget/app_image.dart';
import 'package:newers_world/seoWidget/app_text.dart';

class DashboardUserCard extends StatelessWidget {
  const DashboardUserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        child: Container(
          margin: const EdgeInsets.all(20),
          decoration: StyleUtils.cardDecoration,
          width: double.infinity,
          child: Stack(
            children: [
              const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('0y 9m'),
                  )),
              Flex(
                direction: ResponsiveWidget.isLargeScreen(context)
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  Align(
                      alignment: ResponsiveWidget.isLargeScreen(context)
                          ? Alignment.centerLeft
                          : Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.w),
                        child: userDetailContact(),
                      )),
                  Expanded(
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.only(top: 10.w, left: 20),
                      child: userDetailDescription(),
                    )),
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.bottomRight, child: getProfileButton()),
            ],
          ),
        ),
        constraints: BoxConstraints(
            minWidth: 200,
            maxWidth: 800,
            maxHeight: ResponsiveWidget.isLargeScreen(context) ? 400 : 600,
            minHeight: ResponsiveWidget.isLargeScreen(context) ? 400 : 600));
  }

  Widget userDetailContact() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 5.0,
        ),
        const AppImage(
          radius: 55,
          src: dashboardProfileImage,
          alt: 'Newer Profile Image',
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
        const SizedBox(
          height: 40,
        )
      ],
    );
  }

  Widget userDetailDescription() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: dashboardProfileName,
                style: TextStyle(
                  fontSize: Constants.headingFontSize,
                ),
              ),
              AppText(
                text: 'Software Engineer',
                headingElement: HeadingText.h2,
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
                title: AppText(
                  text: 'To The New Private Limited',
                  headingElement: HeadingText.h2,
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
                title: AppText(
                  text: 'Digital Native Businesses(DNB)',
                  headingElement: HeadingText.h2,
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
                title: AppText(
                  text: 'iOS',
                  headingElement: HeadingText.h2,
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
