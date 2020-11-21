import 'package:flutter/material.dart';

import 'package:gh_issue_tracker/constants/app_theme.dart';
import 'package:gh_issue_tracker/ui/widgets/app_title_date.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().splashColor,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 10,
          ),
          child: ListView(
            shrinkWrap: true,
            children: [
              AppTitle(),
            ],
          ),
        ),
      ),
    );
  }
}
