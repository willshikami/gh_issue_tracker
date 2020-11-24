// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';

// import 'package:async_redux/async_redux.dart';

// import 'package:gh_issue_tracker/business/app_state.dart';
// import 'package:gh_issue_tracker/business/issues/actions/issues_actions.dart';
// import 'package:gh_issue_tracker/business/issues/models/issues_state.dart';
// import 'package:gh_issue_tracker/ui/issues/issues_list_widget.dart';

// class IssuesConnector extends StatelessWidget {
//   const IssuesConnector({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, ViewModel>(
//       debug: this,
//       vm: Factory(this),
//       onInit: (store) => store.dispatch(LoadIssuesAction()),
//       builder: (BuildContext context, ViewModel vm) => IssuesList(
//         issues: vm.issuesList,
//         isLoading: vm.isLoading,
//       ),
//     );
//   }
// }

// class ViewModel extends Vm {
//   final List<Issue> issuesList;
//   final bool isLoading;

//   ViewModel({
//     @required this.issuesList,
//     @required this.isLoading,
//   }) : super(equals: [issuesList, isLoading]);
// }

// class Factory extends VmFactory<AppState, IssuesConnector> {
//   Factory(widget) : super(widget);

//   @override
//   ViewModel fromStore() {
//     return ViewModel(
//       issuesList: state.issuesList,
//       isLoading: state.isLoading,
//     );
//   }
// }
