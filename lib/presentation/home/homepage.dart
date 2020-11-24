import 'package:flutter/material.dart';

import 'package:gh_issue_tracker/constants/app_theme.dart';
import 'package:gh_issue_tracker/presentation/issues/issues_list_widget.dart';
import 'package:gh_issue_tracker/presentation/widgets/containers.dart';
import 'package:gh_issue_tracker/presentation/widgets/app_title_date.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().backgroundColor,
      body: ListView(
        shrinkWrap: true,
        children: [
          SpacedContainer(
            containerChild: AppTitle(),
          ),
          IssuesList(),
        ],
      ),
    );
  }
}
