import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

import 'package:gh_issue_tracker/business/redux/app_state.dart';
import 'package:gh_issue_tracker/business/redux/view_models/app_state_viewmodel.dart';

class IssueList extends StatefulWidget {
  @override
  _IssueListState createState() => _IssueListState();
}

class _IssueListState extends State<IssueList> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppStateViewModel>(
        builder: (BuildContext context, AppStateViewModel vm) {
      return Container();
    });
  }
}
