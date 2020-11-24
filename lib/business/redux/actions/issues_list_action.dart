import 'package:async_redux/async_redux.dart';
import 'package:gh_issue_tracker/business/redux/app_state.dart';

class GithubIssuesListStateActions extends ReduxAction<AppState> {
  final List githubIssuesList;

  GithubIssuesListStateActions({
    this.githubIssuesList,
  });

  @override
  AppState reduce() {
    return state.rebuild(
      (AppStateBuilder b) => b
        ..githubIssuesListState = state.githubIssuesListState.copy(
          githubIssuesList: githubIssuesList,
        ),
    );
  }
}
