import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:async_redux/async_redux.dart';

import 'package:gh_issue_tracker/business/service/service.dart';
import 'package:gh_issue_tracker/business/redux/app_state.dart';
import 'package:gh_issue_tracker/presentation/issues/issue_card.dart';
import 'package:gh_issue_tracker/business/redux/view_models/app_state_viewmodel.dart';

class IssuesList extends StatefulWidget {
  final List<IssuesList> issues;
  final bool isLoading;
  const IssuesList({
    Key key,
    this.issues,
    this.isLoading,
  }) : super(key: key);

  @override
  _IssuesListState createState() => _IssuesListState();
}

class _IssuesListState extends State<IssuesList> {
  // Load more as the user scrolls
  // ScrollController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = ScrollController()
    //   ..addListener(() {
    //     if widget.isLoading && _controller.position.maxScrollExtent == _controller.position.pixels){
    //       widget.loadMore;
    //     }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: AppService.loadIssuesandSavetoState(context),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return StoreConnector<AppState, AppStateViewModel>(
                converter: (Store<AppState> store) =>
                    AppStateViewModel.fromStore(store),
                builder: (BuildContext context, AppStateViewModel vm) {
                  final List githubIssueList =
                      vm.state.githubIssuesListState.githubIssuesList;
                  return RefreshIndicator(
                    onRefresh: () {},
                    child: Column(
                      children: List.generate(
                          githubIssueList.length,
                          (index) => IssuesCard(
                                postLink: githubIssueList[index]['html_url'],
                                userAvatar: githubIssueList[index]['user']
                                    ['avatar_url'],
                                dateOpened: githubIssueList[index]
                                    ['created_at'],
                                issueNumber: githubIssueList[index]['number'],
                                issueComments: githubIssueList[index]
                                    ['comments'],
                                issueStatus: githubIssueList[index]['state'],
                                issueTitle: githubIssueList[index]['title'],
                                issueUser: githubIssueList[index]['user']
                                    ['login'],
                              )),
                    ),
                  );
                });
          }
          return Container(
            padding: EdgeInsets.symmetric(vertical: 180),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
          ;
        });
  }
}
