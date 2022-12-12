import 'package:flutter/material.dart';
import 'package:newers_world/attendance/screen/attendence_pending.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        initiallyExpanded: true,
        title: const Text(
          'My Information',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          SizedBox(
              height: 450,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      height: 1,
                      color: Colors.black38,
                    ),
                    const PageItems(),
                    const Expanded(child: SizedBox.expand()),
                    Divider(
                      height: 1,
                      color: Colors.grey.shade300,
                    ),
                    _getBottomViewLeaveRequest()
                  ]))
        ]);
  }

  Align _getBottomViewLeaveRequest() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
              text: 'Click ',
              style: StyleUtils.textStyleNormal,
              children: [
                TextSpan(
                    text: 'here ',
                    style: StyleUtils.textStyleNormal
                        .copyWith(color: const Color(0xFF1F82CE))),
                const TextSpan(
                    text: 'to view all leave requests.',
                    style: StyleUtils.textStyleNormal)
              ]),
        ),
      ),
    );
  }
}

class PageItems extends StatefulWidget {
  const PageItems({
    Key? key,
  }) : super(key: key);

  @override
  State<PageItems> createState() => _PageItemsState();
}

class _PageItemsState extends State<PageItems> {
  final pages = ['Absences', 'Pending', 'Approved'];
  final pagesCount = [2, 38, 83];
  String selected = 'Absences';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              children: pages
                  .map((e) => Item(
                      title: e,
                      isSelected: selected == e,
                      count: pagesCount[
                          pages.indexWhere((element) => element == e)],
                      callback: () {
                        setState(() {
                          selected = e;
                        });
                      }))
                  .toList()),
          Divider(
            height: 1,
            color: Colors.grey[300],
          ),
          selected == 'Absences'
              ? const Pending(showInfoMessage: false)
              : Pending(
                  showInfoMessage: selected == 'Pending',
                )
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String title;
  final int count;
  final bool isSelected;
  final VoidCallback callback;

  const Item(
      {Key? key,
      required this.title,
      required this.isSelected,
      required this.count,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isSelected ? Colors.teal[400] : Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5))),
        child: Text(
          '$title ($count)',
          style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey[600],
              fontSize: 12,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
