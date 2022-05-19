import 'package:flutter/material.dart';

class TeamList extends StatelessWidget {
  const TeamList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1000,
      height: 320,
      child: IgnorePointer(
        child: GridView.builder(
            itemCount: 7,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: (175/135),// 1.3,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                constraints: const BoxConstraints(
                  maxHeight: 160,
                  minHeight: 135,
                  maxWidth: 200,
                  minWidth: 175,
                ),
                height: 135,
                width: 175,
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      // child: Text('${index + 1}'),
                      radius: 30.0,
                    ),
                    Text(
                      (index + 1).toString(),
                      style: const TextStyle(
                          color: Colors.blueGrey,
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
                ),
              );
            }),
      ),
    );
  }
}
