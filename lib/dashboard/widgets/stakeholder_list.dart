import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:newers_world/main_router.dart';
import 'package:newers_world/profile/profile_model.dart';
import 'package:newers_world/seoWidget/app_image.dart';
import 'package:newers_world/seoWidget/app_text.dart';

class StakeholdersList extends StatelessWidget {
  const StakeholdersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListTile(
            onTap: () {
              context.router.push(ProfileHomeRoute(id: 1));
              },
            leading: const AppImage(
              radius: 40,
              src: ankitNigamProfileUrl,
              alt: 'Stakeholder Profile Image',
            ),
            title: const AppText(text: ankitNigam, style: TextStyle()),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppText(
                  text: techLead,
                  headingElement: HeadingText.h2,
                  style: TextStyle(),
                ),
                AppText(
                  text: mentor,
                  headingElement: HeadingText.h2,
                  style: TextStyle(),
                ),
              ],
            ),
          ),
          Container(
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            onTap: () {
              context.router.push(ProfileHomeRoute(id: 2));
            },
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(kritikaAnandProfileUrl),
              radius: 40.0,
            ),
            title: const Text(kritikaAnand),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppText(
                  text: excHR,
                  headingElement: HeadingText.h2,
                  style: TextStyle(),
                ),
                AppText(
                  text: hrSpoc,
                  headingElement: HeadingText.h2,
                  style: TextStyle(),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            onTap: () {
              context.router.push(ProfileHomeRoute(id: 3));
            },
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(saurabhSablokProfileUrl),
              radius: 40.0,
            ),
            title: const Text(saurabhSablok),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(projectManager),
                Text(reportingManager),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            onTap: () {
              context.router.push(ProfileHomeRoute(id: 4));
            },
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(ashishKumarProfileUrl),
              radius: 40.0,
            ),
            title: const Text(ashishKumar),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(associateTechLead),
                Text(mentor),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 30.0),
            child: const Divider(
              indent: 30.0,
              color: Colors.blueGrey,
            ),
          ),
          ListTile(
            onTap: () {
              context.router.push(ProfileHomeRoute(id: 5));
            },
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(lokeshKumarProfileUrl),
              radius: 40.0,
            ),
            title: const Text(lokeshKumar),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(associateTechLead),
                Text(mentor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
