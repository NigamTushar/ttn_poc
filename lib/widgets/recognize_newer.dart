import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewerRecognitionContentCard extends StatefulWidget {
  final double width;
  const NewerRecognitionContentCard({Key? key, required this.width})
      : super(key: key);

  @override
  State<NewerRecognitionContentCard> createState() => _NewerRecognitionContentCardState();
}

class _NewerRecognitionContentCardState extends State<NewerRecognitionContentCard> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: widget.width,
      constraints: const BoxConstraints(minHeight: 300, maxHeight: 320),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
              maxLines: null,
            ),
          ),
        ],
      ),
    );
  }
}
