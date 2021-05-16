import 'dart:async';
import 'package:flutter/material.dart';

import 'package:async_redux/async_redux.dart';
import 'package:gh_issue_tracker/business/redux/app_state.dart';
import 'package:gh_issue_tracker/business/service/service.dart';

class FetchIssuesAction extends ReduxAction<AppState> {
  final BuildContext context;
  final bool show;

  FetchIssuesAction({this.context, this.show = false});

  @override
  void after() => toggleLoadingIndicator(context: context, show: false);

  @override
  void before() {
    if (this.show) {
      toggleLoadingIndicator(context: context, show: show);
    }
  }

  @override
  Future<AppState> reduce() async {
    await AppService.loadIssuesandSavetoState(context);
    return state;
  }
}
