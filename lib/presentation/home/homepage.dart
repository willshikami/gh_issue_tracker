import 'package:flutter/material.dart';
import 'package:gh_issue_tracker/business/service/service.dart';

import 'package:gh_issue_tracker/constants/app_theme.dart';
import 'package:gh_issue_tracker/presentation/widgets/containers.dart';
import 'package:gh_issue_tracker/presentation/widgets/app_title_date.dart';
import 'package:gh_issue_tracker/presentation/issues/issues_list_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme().splashColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appTheme().splashColor,
            expandedHeight: 242,
            elevation: 0.5,
            pinned: true,
            floating: true,
            bottom: PreferredSize(
              child: SpacedContainer(
                containerChild: AppTitle(),
              ),
              preferredSize: Size.fromHeight(228),
            ),
          ),
          buildBody(context)
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return SliverToBoxAdapter(
        child: RefreshIndicator(
      onRefresh: () => reloadIssues(context),
      child: Column(
        children: [
          IssuesList(),
        ],
      ),
    ));
  }
}
