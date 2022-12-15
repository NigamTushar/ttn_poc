import 'package:flutter/material.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class Absences extends StatefulWidget {
  const Absences({Key? key}) : super(key: key);

  @override
  State<Absences> createState() => _AbsencesState();
}

class _AbsencesState extends State<Absences> {
  bool selectAll = false;
  List<String> list = [
    '14-Dec-2022',
    '15-Dec-2022',
    '16-Dec-2022',
    '17-Dec-2022',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: Stack(alignment: Alignment.center, children: [
        Container(
            padding: const EdgeInsets.all(5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              const Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Notes: ',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                    text:
                        'Selected dates will be converted with single Time-Type.',
                    style: TextStyle(fontWeight: FontWeight.normal))
              ])),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 8),
                height: 50,
                child: Stack(fit: StackFit.expand, children: [
                  _DataColumn(
                    title: 'Select All',
                    alignment: MainAxisAlignment.end,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('December-2022'),
                  )
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              GridView.count(
                crossAxisCount: ResponsiveWidget.isSmallScreen(context) ? 2 : 3,
                childAspectRatio: (7),
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                shrinkWrap: true,
                children: list
                    .map((e) => _DataColumn(
                          title: e,
                        ))
                    .toList(),
              ),
            ])),
        Container(
            alignment: Alignment.bottomRight,
            padding: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Clear(0)'),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.teal[400]),
            ))
      ]),
    );
  }
}

class _DataColumn extends StatefulWidget {
  final String title;
  final MainAxisAlignment alignment;

  const _DataColumn(
      {required this.title, this.alignment = MainAxisAlignment.start});

  @override
  State<_DataColumn> createState() => _DataColumnState();
}

class _DataColumnState extends State<_DataColumn> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: widget.alignment, children: [
      Checkbox(
        value: isSelected,
        onChanged: (value) {
          setState(() {
            isSelected = !isSelected;
          });
        },
      ),
      Text(widget.title)
    ]);
  }
}
