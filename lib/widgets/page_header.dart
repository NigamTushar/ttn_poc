import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10.0),
      height: 80,
      color: Colors.white,
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0,),
            child: Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.blueGrey,
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
