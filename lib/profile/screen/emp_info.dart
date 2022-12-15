import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/dashboard/widgets/profile_expandable_list.dart';
import 'package:newers_world/helper/responsive_widget.dart';
final empSnapShots = {'Legal Entity': 'TO THE NEW Private Limited','Business Unit':'Australia & New Zealand (ANZ)','Function':'Delivery','Competency':'Android','Designation':'Senior Software Engineer'};
final joiningInformation = {'Date of Joining': '02-Nov-2021','Seniority Date':'02-Nov-2021','Experience prior to TTN (in months)':'52','Experience in TTN (in months)':'13'};
final myStakeHolders = {'Reporting Manager': 'Kartikey Joshi','HR SPOC':'Kritika Anand','Mentor':'Varun Mishra'};
final projectDetails = {'Project Name': 'TabCorp Team','Delivery Director':'Jacob Koshy','Project Manager':'Gaurav Arora'};

class EmployeeInfo extends StatelessWidget {
  const EmployeeInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Wrap(
        children:  [
        constrainedWidget(context, Container(
              decoration: StyleUtils.cardDecoration,
              // width: _screenSize.width/2.4,
              // color: Colors.white,
              margin: const EdgeInsets.only(top: 20,left: 20, right: 20),
              padding: const EdgeInsets.all(20.0),
              child: ExpandableListView(title: "Employement Snapshot", profileInfoMap: empSnapShots,),
            )),
          constrainedWidget(context, Container(
              decoration: StyleUtils.cardDecoration,
              // width: _screenSize.width/2.4,
              // color: Colors.white,
              margin: const EdgeInsets.only(top: 20,left: 20, right: 20),
              padding: const EdgeInsets.all(20.0),
              child: ExpandableListView(title: "Joining Information", profileInfoMap: joiningInformation,),
            )),
          constrainedWidget(context, Container(
            decoration: StyleUtils.cardDecoration,
            // width: _screenSize.width/2.4,
            // color: Colors.white,
            margin: const EdgeInsets.only(top: 20,left: 20, right: 20),
            padding: const EdgeInsets.all(20.0),
            child: ExpandableListView(title: "My Stakeholders", profileInfoMap: myStakeHolders,),
          )),
          constrainedWidget(context, Container(
            decoration: StyleUtils.cardDecoration,
            // width: _screenSize.width/2.4,
            // color: Colors.white,
            margin: const EdgeInsets.only(top: 20,left: 20, right: 20),
            padding: const EdgeInsets.all(20.0),
            child: ExpandableListView(title: "Project Details", profileInfoMap: projectDetails,),
          ))
        ],
      ),
    );
  }

  Widget constrainedWidget(BuildContext context, Widget child) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: ResponsiveWidget.isLargeScreen(context) ? 400 : 600,
          maxWidth: 600,),
      child: child,
    );
  }
}
