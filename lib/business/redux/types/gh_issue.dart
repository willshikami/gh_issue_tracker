import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter/foundation.dart';
import 'package:gh_issue_tracker/business/serializers/serializers.dart';

part 'gh_issue.g.dart';

abstract class GitHubIssue implements Built<GitHubIssue, GitHubIssueBuilder> {
  @nullable
  @BuiltValueField(wireName: 'issueUrl')
  String get issueUrl;

  @nullable
  @BuiltValueField(wireName: 'labels')
  String get labels;

  @nullable
  @BuiltValueField(wireName: 'issueName')
  String get issueName;

  @nullable
  @BuiltValueField(wireName: 'issueNumber')
  String get issueNumber;

  @nullable
  @BuiltValueField(wireName: 'commentsUrl')
  String get commentsUrl;

  @nullable
  @BuiltValueField(wireName: 'issueUserName')
  String get issueUserName;

  @nullable
  @BuiltValueField(wireName: 'issueUserAvatar')
  String get issueUserAvatar;

  @nullable
  @BuiltValueField(wireName: 'issueState')
  String get issueState;

  @nullable
  @BuiltValueField(wireName: 'dateOpened')
  String get dateOpened;

  @nullable
  @BuiltValueField(wireName: 'dateUpdated')
  String get dateUpdated;

  @nullable
  @BuiltValueField(wireName: 'dateClosed')
  String get dateClosed;

  @nullable
  @BuiltValueField(wireName: 'issueNumberOfComments')
  int get issueNumberOfComments;

  GitHubIssue._();

  factory GitHubIssue.initial() => GitHubIssue(
        (GitHubIssueBuilder b) => b
          ..issueUrl = GitHubIssue.initial() as String
          ..labels = GitHubIssue.initial() as String
          ..issueName = GitHubIssue.initial() as String
          ..issueNumber = GitHubIssue.initial() as String
          ..commentsUrl = GitHubIssue.initial() as String
          ..issueUserName = GitHubIssue.initial() as String
          ..issueUserAvatar = GitHubIssue.initial() as String
          ..issueState = GitHubIssue.initial() as String
          ..dateOpened = GitHubIssue.initial() as String
          ..dateUpdated = GitHubIssue.initial() as String
          ..dateClosed = GitHubIssue.initial() as String
          ..issueNumberOfComments = GitHubIssue.initial() as int,
      );

  static Serializer<GitHubIssue> get serializer => _$gitHubIssueSerializer;

  factory GitHubIssue([void Function(GitHubIssueBuilder) updates]) =
      _$GitHubIssue;

  static GitHubIssue copyWith({
    @required String issueUrl,
    @required String labels,
    @required String issueName,
    @required String issueNumber,
    @required String commentsUrl,
    @required String issueUserName,
    @required String issueUserAvatar,
    @required String issueState,
    @required String dateOpened,
    @required String dateUpdated,
    @required String dateClosed,
    String issueNumberOfComments,
  }) {
    return GitHubIssue(
      (GitHubIssueBuilder b) => b
        .._issueUrl = issueUrl ?? b.issueUrl
        .._labels = labels ?? b.labels
        .._issueName = issueName ?? b.issueName
        .._issueNumber = issueNumber ?? b.issueNumber
        .._commentsUrl = commentsUrl ?? b.commentsUrl
        .._issueUserName = issueUserName ?? b.issueUserName
        .._issueUserAvatar = issueUserAvatar ?? b.issueUserAvatar
        .._issueState = issueState ?? b.issueState
        .._dateOpened = dateOpened ?? b.dateOpened
        .._dateUpdated = dateUpdated ?? b.dateUpdated
        .._dateClosed = dateClosed ?? b.dateClosed
        .._issueNumberOfComments =
            issueNumberOfComments ?? b.issueNumberOfComments,
    );
  }

  Map<String, dynamic> toJson() =>
      serializers.serializeWith(GitHubIssue.serializer, this);

  static GitHubIssue fromJson(Map<String, dynamic> data) =>
      serializers.deserializeWith(GitHubIssue.serializer, data);
}
