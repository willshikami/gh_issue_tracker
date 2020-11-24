class GithubIssuesState {
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

  GithubIssuesState({
    this.commentsUrl,
    this.issueUserName,
    this.issueUserAvatar,
    this.issueState,
    this.dateOpened,
    this.dateUpdated,
    this.dateClosed,
    this.issueNumberOfComments,
    this.issueUrl,
    this.labels,
    this.issueName,
    this.issueNumber,
  });

  GithubIssuesState copy({
    String issueUrl,
    String labels,
    String issueName,
    String issueNumber,
    String commentsUrl,
    String issueUserName,
    String issueUserAvatar,
    String issueState,
    String dateOpened,
    String dateUpdated,
    String dateClosed,
    int issueNumberOfComments,
  }) {
    return GithubIssuesState(
      issueUrl: issueUrl ?? this.issueUrl,
      labels: labels ?? this.labels,
      issueName: issueName ?? this.issueName,
      issueNumber: issueNumber ?? this.issueNumber,
      commentsUrl: commentsUrl ?? this.commentsUrl,
      issueUserName: issueUserName ?? this.issueUserName,
      issueUserAvatar: issueUserAvatar ?? this.issueUserAvatar,
      issueState: issueState ?? this.issueState,
      dateOpened: dateOpened ?? this.dateOpened,
      dateUpdated: dateUpdated ?? this.dateUpdated,
      dateClosed: dateClosed ?? this.dateClosed,
      issueNumberOfComments:
          issueNumberOfComments ?? this.issueNumberOfComments,
    );
  }

  static GithubIssuesState initialState() => GithubIssuesState(
        issueUrl: 'UNKNOWN',
        labels: 'UNKNOWN',
        issueName: 'UNKNOWN',
        issueNumber: 'UNKNOWN',
        commentsUrl: 'UNKNOWN',
        issueUserName: 'UNKNOWN',
        issueUserAvatar: 'UNKNOWN',
        issueState: 'UNKNOWN',
        dateOpened: 'UNKNOWN',
        dateUpdated: 'UNKNOWN',
        dateClosed: 'UNKNOWN',
        issueNumberOfComments: 0,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is GithubIssuesState &&
            issueUrl == other.issueUrl &&
            labels == other.labels &&
            issueName == other.issueName &&
            issueNumber == other.issueNumber &&
            commentsUrl == other.commentsUrl &&
            issueUserName == other.issueUserName &&
            issueUserAvatar == other.issueUserAvatar &&
            dateOpened == other.dateOpened &&
            dateUpdated == other.dateUpdated &&
            dateClosed == other.dateClosed &&
            issueNumberOfComments == other.issueNumberOfComments;
  }

  @override
  int get hashCode => issueNumber.hashCode ^ issueNumber.hashCode;
}
