import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  final double width;
  const PageHeader({
    Key? key,
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      height: 80,
      width: width,
      color: Colors.white,
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0,),
            child: Text(
              'Dashboard',
              style: TextStyle(
                // color: Colors.blueGrey,
                fontWeight: FontWeight.w300,
                fontSize: 26,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0,),
            child: Text('Home / Dashboard'),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
