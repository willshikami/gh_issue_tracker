import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gh_issue_tracker/logic/app_state.dart';
import 'package:gh_issue_tracker/logic/issues/actions/issues_actions.dart';
import 'package:gh_issue_tracker/logic/issues/models/issues_model.dart';
import 'package:gh_issue_tracker/ui/issues/issues_list_widget.dart';

class IssuesConnector extends StatelessWidget {
  const IssuesConnector({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ViewModel>(
      debug: this,
      model: ViewModel(),
      // onInit: (store) => store.dispatch(LoadIssuesAction()),
      builder: (BuildContext context, ViewModel vm) => IssuesList(
        issues: vm.issues,
        loadIssues: vm.loadIssues,
        isLoading: vm.isLoading,
      ),
    );
  }
}

class ViewModel extends BaseModel<AppState> {
  ViewModel();

  List<Issue> issues;
  VoidCallback loadIssues;
  bool isLoading;

  ViewModel.build({
    @required this.issues,
    @required this.isLoading,
    @required this.loadIssues,
  }) : super(equals: [issues, isLoading, loadIssues]);
  ViewModel fromStore() => ViewModel.build(
        issues: state.issues,
        isLoading: state.isLoading,
        loadIssues: () => dispatch(
          LoadIssuesAction(),
        ),
      );
}

// class Factory extends VmFactory<AppState, IssuesConnector> {
//   Factory(widget) : super(widget);

//   @override
//   ViewModel fromStore() {
//     return ViewModel(issues: state.issues, isLoading: state.isLoading);
//   }
// }
