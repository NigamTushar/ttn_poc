import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';

class NewerRecognitionContentCard extends StatefulWidget {
  final double width;

  const NewerRecognitionContentCard({Key? key, required this.width})
      : super(key: key);

  @override
  State<NewerRecognitionContentCard> createState() =>
      _NewerRecognitionContentCardState();
}

class _NewerRecognitionContentCardState
    extends State<NewerRecognitionContentCard> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: 200,
          maxWidth: 800,
          maxHeight:400,
          minHeight: 400),
      child: Container(
        decoration: StyleUtils.cardDecoration,
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recognize a newer',
              style: StyleUtils.dashboardCardHeaderTextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            InputDecorator(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
                contentPadding: EdgeInsets.all(10.0),
              ),
              child: DropdownButton(
                underline: const SizedBox.shrink(),
                isDense: true,
                borderRadius: BorderRadius.circular(10.0),
                isExpanded: true,
                hint: const Text('Select Newer/s'),
                items: <String>['Select Newer/s', 'Newer 1', 'Newer 2']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InputDecorator(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
                contentPadding: EdgeInsets.all(10.0),
              ),
              child: DropdownButton(
                underline: const SizedBox.shrink(),
                isDense: true,
                borderRadius: BorderRadius.circular(10.0),
                isExpanded: true,
                hint: const Text('Select a Karma/Core Value'),
                items: <String>[
                  'Select a Karma/Core Value',
                  'Ownership',
                  'Knowledge Sharing'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 150.0,
              child: Expanded(
                child: TextField(
                  controller: _textEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
