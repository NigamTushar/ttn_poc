import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:newers_world/main_router.dart';
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
              context.router.push(ProfileHomeRoute(
                  profileId: 1,
                  profileName: 'Ankit Nigam',
                  profileDesignation: 'Technical Lead',
                  profileImageUrl:
                      'https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=robohash&r=x'));
            },
            leading: const AppImage(
              radius: 40,
              src:
                  'https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=robohash&r=x',
              alt: 'Stakeholder Profile Image',
            ),
            title: const AppText(text: 'Ankit Nigam', style: TextStyle()),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppText(
                  text: 'Technical Lead',
                  headingElement: HeadingText.h2,
                  style: TextStyle(),
                ),
                AppText(
                  text: 'Mentor',
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
              context.router.push(ProfileHomeRoute(
                  profileId: 2,
                  profileName: 'Kritika Anand',
                  profileDesignation: 'Executive - Human Resource',
                  profileImageUrl:
                      'https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=identicon&r=x'));
            },
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://gravatar.com/avatar/f59e51f892615faded8d5fb3cf18a2c0?s=400&d=identicon&r=x'),
              radius: 40.0,
            ),
            title: const Text('Kritika Anand'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppText(
                  text: 'Executive - Human Resource',
                  headingElement: HeadingText.h2,
                  style: TextStyle(),
                ),
                AppText(
                  text: 'HR Spoc',
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
              context.router.push(ProfileHomeRoute(
                  profileId: 3,
                  profileName: 'Saurabh Sablok',
                  profileDesignation: 'Project Manager',
                  profileImageUrl:
                      'https://gravatar.com/avatar/dad1dd564d0d59f6077b83d61b32b57f?s=400&d=identicon&r=x'));
            },
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://gravatar.com/avatar/dad1dd564d0d59f6077b83d61b32b57f?s=400&d=identicon&r=x'),
              radius: 40.0,
            ),
            title: const Text('Saurabh Sablok'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Project Manager'),
                Text('Reporting Manager'),
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
              context.router.push(ProfileHomeRoute(
                  profileId: 4,
                  profileName: 'Ashish Kumar',
                  profileDesignation: 'Associate Tech Lead',
                  profileImageUrl:
                      'https://gravatar.com/avatar/dad1dd564d0d59f6077b83d61b32b57f?s=400&d=robohash&r=x'));
            },
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://gravatar.com/avatar/dad1dd564d0d59f6077b83d61b32b57f?s=400&d=robohash&r=x'),
              radius: 40.0,
            ),
            title: const Text('Ashish Kumar'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Associate Tech Lead'),
                Text('Mentor'),
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
              context.router.push(ProfileHomeRoute(
                  profileId: 5,
                  profileName: 'Lokesh Kumar',
                  profileDesignation: 'Associate Tech Lead',
                  profileImageUrl:
                      'https://gravatar.com/avatar/dad1dd564d0d59f6077b83d61b32b57f?s=400&d=monsterid&r=x'));
            },
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://gravatar.com/avatar/dad1dd564d0d59f6077b83d61b32b57f?s=400&d=monsterid&r=x'),
              radius: 40.0,
            ),
            title: const Text('Lokesh Kumar'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Associate Tech Lead'),
                Text('Mentor'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
