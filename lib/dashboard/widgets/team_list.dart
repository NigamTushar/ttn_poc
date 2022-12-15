import 'package:flutter/material.dart';
import 'package:newers_world/dashboard/utils/style_utils.dart';
import 'package:newers_world/helper/responsive_widget.dart';

class TeamList extends StatelessWidget {
  const TeamList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
          minWidth: 200, maxWidth: 800, maxHeight: 400, minHeight: 400),
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: StyleUtils.cardDecoration,
        child: GridView.builder(
            itemCount: 7,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: ResponsiveWidget.isLargeScreen(context) ? 3 : MediaQuery.of(context).size.width<500?1:2,
                childAspectRatio: MediaQuery.of(context).size.width<500?1.6:1.2),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    // child: Text('${index + 1}'),
                    radius: 30.0,
                  ),
                  Text(
                    (index + 1).toString(),
                    style: const TextStyle(
                        // color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(Icons.phone),
                              Text('Call'),
                            ],
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(Icons.mail),
                              Text('Email'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
