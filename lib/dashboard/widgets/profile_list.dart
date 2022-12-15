import 'package:flutter/material.dart';

import '../../helper/responsive_widget.dart';

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

final empSnapShots = {
  'Legal Entity': ['TO THE NEW Private Limited', 'AABB'],
  'Business Unit': ['Australia & New Zealand (ANZ)', 'CC'],
  'Let test': ['Australia & New Zealand (ANZ), we are good mate', 'CC']
};
const headingColor = Colors.black87;

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Expandable List"),
        backgroundColor: Colors.redAccent,
      ),
      body: ProfileListView(
        title: "Employement Snapshot",
        profileInfoMap: listOfColumns,
        heading: ['d'],
      ),
    );
  }
}

class ProfileListView extends StatefulWidget {
  final String title;
  final List<Map<String, String>> profileInfoMap;
  final List<String> heading;

  const ProfileListView(
      {Key? key,
      required this.title,
      required this.profileInfoMap,
      required this.heading})
      : super(key: key);

  @override
  _ProfileListViewState createState() => _ProfileListViewState();
}

class _ProfileListViewState extends State<ProfileListView> {
  // bool expandFlag = false;
  bool expandFlag = true;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: _buildHeader(),
      tilePadding: EdgeInsets.only(left: 20),
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: ResponsiveWidget.isLargeScreen(context)
              ? Container(
                  child: _buildList(),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal, child: _buildList()),
        ),
      ],
    );
    /*return ExpansionTile(initiallyExpanded: true,title: _buildHeader(),children: [Container(
      height: 1,
      color: Colors.black12,),
      _buildList(),],);*/
  }

  Container _buildList() {
    return Container(
      width: ResponsiveWidget.isSmallScreen(context)
          ? 800
          : MediaQuery.of(context).size.width,
      child: DataTable(
        border: TableBorder(
            horizontalInside: BorderSide(
                width: .5,
                color: Colors.grey.shade300,
                style: BorderStyle.solid)),
        columns: widget.heading
            .map((title) => DataColumn(
                    label: Expanded(
                  child: Container(
                    constraints: BoxConstraints(minWidth: 100, maxWidth: 150),
                    child: Text(title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: headingColor)),
                  ),
                )))
            .toList(),
        rows: widget
            .profileInfoMap // Loops through dataColumnText, each iteration assigning the value to element
            .map(
              ((element) => DataRow(
                    cells: <DataCell>[
                      DataCell(Expanded(
                        child: Container(
                            constraints:
                                BoxConstraints(minWidth: 100, maxWidth: 150),
                            child: Text(element["first_column"]!)),
                      )),
                      //Extracting from Map element the value
                      DataCell(Text(element["second_column"]!)),
                      DataCell(Text(element["third_column"]!)),
                      DataCell(Text(element["fourth_column"]!)),
                      DataCell(Text(element["fifth_column"]!)),
                    ],
                  )),
            )
            .toList(),
      ),
    );
  }

  Container _buildHeader() {
    return Container(
      color: Colors.white,
      // padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              widget.title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: headingColor),
            ),
          ),
        ],
      ),
    );
  }
}
