import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

import 'package:gh_issue_tracker/business/redux/app_state.dart';

class AppStateViewModel extends Vm {
  final AppState state;

  AppStateViewModel({@required this.state});

  static AppStateViewModel fromStore(Store<AppState> store) {
    return AppStateViewModel(state: store.state);
  }
}
