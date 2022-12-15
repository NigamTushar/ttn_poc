import 'package:flutter/material.dart';

final empSnapShots = {
  'Legal Entity': 'TO THE NEW Private Limited',
  'Business Unit': 'Australia & New Zealand (ANZ)',
  'Function': 'Delivery',
  'Competency': 'Android',
  'Designation': 'Senior Software Engineer'
};
const headingColor = Colors.black54;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Expandable List"),
        backgroundColor: Colors.redAccent,
      ),
      body: ExpandableListView(
        title: "Employement Snapshot",
        profileInfoMap: empSnapShots,
      ),
    );
  }
}

class ExpandableListView extends StatefulWidget {
  final String title;
  final Map<String, String> profileInfoMap;

  const ExpandableListView(
      {Key? key, required this.title, required this.profileInfoMap})
      : super(key: key);

  @override
  _ExpandableListViewState createState() => _ExpandableListViewState();
}

class _ExpandableListViewState extends State<ExpandableListView> {
  // bool expandFlag = false;
  bool expandFlag = true;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: true,
      title: _buildHeader(),
      children: [Divider(), _buildList()],
    );
  }

  Padding _buildList() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ExpandableContainer(
        expanded: expandFlag,
        child: Column(
          children: widget.profileInfoMap.keys
              .toList()
              .map(
                (key) => Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(width: .2, color: Colors.grey)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(key,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: headingColor)),
                          Text(widget.profileInfoMap[key] ?? '',
                              style: const TextStyle(color: headingColor)),
                        ]),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Container _buildHeader() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
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

class ExpandableContainer extends StatelessWidget {
  final bool expanded;
  final double? collapsedHeight;
  final double? expandedHeight;
  final Widget child;

  ExpandableContainer({
    required this.child,
    this.collapsedHeight = 0.0,
    this.expandedHeight = 50.0,
    this.expanded = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: child,
      ),
    );
  }
}
