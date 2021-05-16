import 'package:async_redux/async_redux.dart';
import 'package:gh_issue_tracker/business/redux/app_state.dart';

class GithubIssuesFilterListState extends ReduxAction<AppState> {
  final List githubIssuesFilterList;

  GithubIssuesFilterListState({
    this.githubIssuesFilterList,
  });

  @override
  AppState reduce() {
    return state.rebuild(
      (AppStateBuilder b) => b
        ..githubIssuesFilterListState = state.githubIssuesFilterListState.copy(
          githubIssuesFilterList: githubIssuesFilterList,
        ),
    );
  }
}
