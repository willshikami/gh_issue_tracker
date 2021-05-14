class GithubIssuesListState {
  final List githubIssuesList;

  GithubIssuesListState({this.githubIssuesList});

  GithubIssuesListState copy({
    List githubIssuesList,
  }) {
    return GithubIssuesListState(
      githubIssuesList: githubIssuesList ?? this.githubIssuesList,
    );
  }

  static GithubIssuesListState initialState() => GithubIssuesListState(
        githubIssuesList: [],
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is GithubIssuesListState &&
            githubIssuesList == other.githubIssuesList;
  }

  @override
  int get hashCode => githubIssuesList.hashCode ^ githubIssuesList.hashCode;
}
