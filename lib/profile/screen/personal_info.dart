import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/dashboard/widgets/profile_expandable_list.dart';
import 'package:newers_world/helper/responsive_widget.dart';
final newersName = {'Name': 'Lokesh Kumar Prajapati','Desigation':'Senior Software Engineer','Experience':'5 Years'};
final dobInformation = {'Date of Birth': '25-Dec-1993','I prefer to receive B\'day wishes on':'25-Dec','Country of Birth':'India','State of Birth':'Delhi','Place of Birth':'New Delhi'};
final contactInformation = {'Business Email': 'lokesh.prajapati@tothenew.com','Personal Email':'lokeshkp007@gmail.com','Mobile Number':'+91 9971057150'};
final basicInfo = {'Newer ID': '1111','Father\'s Name':'Suresh Kumar Prajapati','Nationality':'India'};

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

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
            child: ExpandableListView(title: "Newer\'s Info", profileInfoMap: newersName,),
          )),
          constrainedWidget(context, Container(
            decoration: StyleUtils.cardDecoration,
            // width: _screenSize.width/2.4,
            // color: Colors.white,
            margin: const EdgeInsets.only(top: 20,left: 20, right: 20),
            padding: const EdgeInsets.all(20.0),
            child: ExpandableListView(title: "DOB Information", profileInfoMap: dobInformation,),
          )),
          constrainedWidget(context, Container(
            decoration: StyleUtils.cardDecoration,
            // width: _screenSize.width/2.4,
            // color: Colors.white,
            margin: const EdgeInsets.only(top: 20,left: 20, right: 20),
            padding: const EdgeInsets.all(20.0),
            child: ExpandableListView(title: "Basic Information", profileInfoMap: basicInfo,),
          )),
          constrainedWidget(context, Container(
            decoration: StyleUtils.cardDecoration,
            // width: _screenSize.width/2.4,
            // color: Colors.white,
            margin: const EdgeInsets.only(top: 20,left: 20, right: 20),
            padding: const EdgeInsets.all(20.0),
            child: ExpandableListView(title: "Contact Information", profileInfoMap: contactInformation,),
          ))
        ],
      ),
    );
  }

  Widget constrainedWidget(BuildContext context, Widget child) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: ResponsiveWidget.isLargeScreen(context) ? 400 : 600,
          maxWidth: 600,
          ),
      child: child,
    );
  }
}
