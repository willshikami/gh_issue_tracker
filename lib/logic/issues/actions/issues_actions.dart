import 'dart:async';

import 'package:http/http.dart';
import 'package:async_redux/async_redux.dart';
import 'package:gh_issue_tracker/logic/app_state.dart';
import 'package:gh_issue_tracker/constants/end_point.dart';
import 'package:gh_issue_tracker/logic/issues/models/issues_model.dart';

class LoadIssuesAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    Response response = await get(endpoint);
    final List<Issue> allIssues = issueFromJson(response.body);
    return state.copy(issues: allIssues);
  }

  @override
  void before() => dispatch(
        IsLoadingAction(true),
      );

  @override
  void after() => dispatch(
        IsLoadingAction(false),
      );
}

class IsLoadingAction extends ReduxAction<AppState> {
  final bool val;

  IsLoadingAction(this.val);

  @override
  AppState reduce() => state.copy(
        isLoading: val,
      );
}
