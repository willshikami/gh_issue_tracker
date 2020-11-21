import 'package:flutter/material.dart';

import 'package:gh_issue_tracker/constants/app_theme.dart';
import 'package:gh_issue_tracker/ui/widgets/app_title_date.dart';
import 'package:gh_issue_tracker/ui/widgets/containers.dart';
import 'package:gh_issue_tracker/ui/widgets/issues_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().backgroundColor,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            SpacedContainer(
              containerChild: AppTitle(),
            ),
            SizedBox(
              height: 12,
            ),
            IssuesList(),
          ],
        ),
      ),
    );
  }
}
