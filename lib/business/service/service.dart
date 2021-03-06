import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gh_issue_tracker/business/redux/actions/fetch_issues_action.dart';
import 'package:gh_issue_tracker/presentation/widgets/platform_loading_indicator.dart';
import 'package:http/http.dart' as http;
import 'package:async_redux/async_redux.dart';

import 'package:gh_issue_tracker/constants/end_point.dart';
import 'package:gh_issue_tracker/business/redux/actions/issues_list_action.dart';

class AppService {
  static Future<List<dynamic>> fetchIssues() async {
    final response = await http.get(endpoint);
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }

  static Future<List> loadIssuesandSavetoState(BuildContext context) async {
    final List issuesResponseList = await AppService.fetchIssues();
    if (issuesResponseList != null) {
      StoreProvider.dispatch(
        context,
        GithubIssuesListStateActions(githubIssuesList: issuesResponseList),
      );
    }
    return issuesResponseList;
  }
}

toggleLoadingIndicator({bool show, BuildContext context}) {
  if (show == true) {
    return PlatformLoadingIndicator();
  }
}

Future<void> reloadIssues(BuildContext context) async {
  await StoreProvider.dispatchFuture(
      context, FetchIssuesAction(context: context));
}
