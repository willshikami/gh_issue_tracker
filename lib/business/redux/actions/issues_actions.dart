import 'package:async_redux/async_redux.dart';
import 'package:gh_issue_tracker/business/redux/app_state.dart';

class GithubIssuesActions extends ReduxAction<AppState> {
  final String issueUrl;
  final String labels;
  final String issueName;
  final String issueNumber;
  final String commentsUrl;
  final String issueUserName;
  final String issueUserAvatar;
  final String issueState;
  final String dateOpened;
  final String dateUpdated;
  final String dateClosed;
  final int issueNumberOfComments;

  GithubIssuesActions({
    this.issueUrl,
    this.labels,
    this.issueName,
    this.issueNumber,
    this.commentsUrl,
    this.issueUserName,
    this.issueUserAvatar,
    this.issueState,
    this.dateOpened,
    this.dateUpdated,
    this.dateClosed,
    this.issueNumberOfComments,
  });

  @override
  AppState reduce() {
    return state.rebuild((AppStateBuilder b) => b
      ..githubIssues = state.githubIssues.copy(
        issueUrl: issueUrl,
        labels: labels,
        issueName: issueName,
        issueNumber: issueNumber,
        commentsUrl: commentsUrl,
        issueUserName: issueUserName,
        issueUserAvatar: issueUserAvatar,
        issueState: issueState,
        dateOpened: dateOpened,
        dateClosed: dateClosed,
        issueNumberOfComments: issueNumberOfComments,
      ));
  }
}
