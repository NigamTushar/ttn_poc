import 'package:flutter/material.dart';
import 'package:newers_world/screens/coming_soon.dart';

class ImportantLinksHome extends StatelessWidget {
  const ImportantLinksHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ComingSoon(title: 'Newers important links', description: 'Newers important links, All links', author: 'To The New');
  }
}
