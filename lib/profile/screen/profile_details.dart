import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/dashboard/widgets/profile_list.dart';
import 'package:newers_world/helper/responsive_widget.dart';

final newersName = {
  'Name': 'Lokesh Kumar Prajapati',
  'Desigation': 'Senior Software Engineer',
  'Experience': '5 Years'
};
final dobInformation = {
  'Date of Birth': '25-Dec-1993',
  'I prefer to receive B\'day wishes on': '25-Dec',
  'Country of Birth': 'India',
  'State of Birth': 'Delhi',
  'Place of Birth': 'New Delhi'
};
final contactInformation = {
  'Business Email': 'lokesh.prajapati@tothenew.com',
  'Personal Email': 'lokeshkp007@gmail.com',
  'Mobile Number': '+91 9971057150'
};
final basicInfo = {
  'Newer ID': '1111',
  'Father\'s Name': 'Suresh Kumar Prajapati',
  'Nationality': 'India'
};
final List<Map<String, String>> empInfo = [
  {
    "first_column": "18-Nov-2019",
    "second_column": "28-Oct-2021",
    "third_column": "KiwiTech Pvt. Ltd.",
    "fourth_column": "Software Engineer-Mobile",
    "fifth_column": "Information Technology"
  },
  {
    "first_column": "01-Jun-2017",
    "second_column": "15-Nov-2019",
    "third_column": "Qualtech Consultants Pvt. Ltd.	",
    "fourth_column": "Associate Engineering Analyst",
    "fifth_column": "Information Technology"
  },
];

final List<Map<String, String>> eduInfo = [
  {
    "first_column": "Bachelor's Degree",
    "second_column": "Management Education And Research Institute",
    "third_column": "Maharshi Dayanand University",
    "fourth_column": "Computer Science",
    "fifth_column": "70.90"
  },
  {
    "first_column": "12th",
    "second_column": "Mata Savitri Devi Sanjeevani Public School",
    "third_column": "Central Board of Secondary Education",
    "fourth_column": "Science",
    "fifth_column": "68"
  },
  {
    "first_column": "10th",
    "second_column": "New Holy Public School",
    "third_column": "Central Board of Secondary Education",
    "fourth_column": "Other",
    "fifth_column": "8.2"
  },
];

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Wrap(
        children: [
          constrainedWidget(
            context,
            Container(
              decoration: StyleUtils.cardDecoration,
              // width: _screenSize.width,
              // color: Colors.white,
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.all(20.0),
              child: ProfileListView(
                title: "Previous Employment",
                profileInfoMap: empInfo,
                heading: [
                  'Start Date',
                  'End Date',
                  'Company Name',
                  'Last Designation',
                  'Type of Business'
                ],
              ),
            ),
          ),
          constrainedWidget(
            context,
            Container(
              decoration: StyleUtils.cardDecoration,
              // width: _screenSize.width,
              // color: Colors.white,
              margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
              padding: const EdgeInsets.all(20.0),
              child: ProfileListView(
                title: "Formal Education",
                profileInfoMap: eduInfo,
                heading: [
                  'Education',
                  'School/ College',
                  'Board/ University',
                  'Specialization',
                  '%/ CGPA'
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget constrainedWidget(BuildContext context, Widget child) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: ResponsiveWidget.isLargeScreen(context) ? 400 : 200,
        maxWidth: MediaQuery.of(context).size.width,
      ),
      child: child,
    );
  }
}
