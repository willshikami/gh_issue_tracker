class GithubIssuesFilterListState {
  final List githubIssuesFilterList;

  GithubIssuesFilterListState({this.githubIssuesFilterList});

  GithubIssuesFilterListState copy({
    List githubIssuesFilterList,
  }) {
    return GithubIssuesFilterListState(
      githubIssuesFilterList:
          githubIssuesFilterList ?? this.githubIssuesFilterList,
    );
  }

  static GithubIssuesFilterListState initialState() =>
      GithubIssuesFilterListState(
        githubIssuesFilterList: [],
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is GithubIssuesFilterListState &&
            githubIssuesFilterList == other.githubIssuesFilterList;
  }

  @override
  int get hashCode =>
      githubIssuesFilterList.hashCode ^ githubIssuesFilterList.hashCode;
}
