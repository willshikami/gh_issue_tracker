import 'package:flutter/material.dart';

import 'package:gh_issue_tracker/ui/home/homepage.dart';
import 'package:gh_issue_tracker/constants/app_theme.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Issue Tracker',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: appTheme(),
      // onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
