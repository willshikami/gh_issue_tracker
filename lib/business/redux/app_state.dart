import 'package:built_value/serializer.dart';
import 'package:built_value/built_value.dart';

import 'package:gh_issue_tracker/business/redux/models/issues_list_state.dart';
import 'package:gh_issue_tracker/business/redux/models/issues_state.dart';
import 'package:gh_issue_tracker/business/serializers/serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  // @BuiltValueField(wireName: 'githubIssue')
  // GitHubIssue get githubIssue;

  @BuiltValueField(wireName: 'githubIssuesListState')
  GithubIssuesListState get githubIssuesListState;

  @BuiltValueField(wireName: 'githubIssues')
  GithubIssuesState get githubIssues;

  AppState._();

  factory AppState.initial() => AppState(
        (AppStateBuilder b) => b
          ..githubIssues = GithubIssuesState.initialState()
          ..githubIssuesListState = GithubIssuesListState.initialState(),
      );

  static Serializer<AppState> get serializer => _$appStateSerializer;

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.copyWith({
    GithubIssuesState githubIssues,
    GithubIssuesListState githubIssuesListState,
  }) {
    return AppState(
      (AppStateBuilder b) => b
        .._githubIssues = githubIssues ?? GithubIssuesState.initialState()
        .._githubIssuesListState =
            githubIssuesListState ?? GithubIssuesListState.initialState(),
    );
  }

  AppState copy() => AppState.copyWith(
        githubIssues: this.githubIssues,
        githubIssuesListState: this.githubIssuesListState,
      );

  Map<String, dynamic> toJson() =>
      serializers.serializeWith(AppState.serializer, this);

  static AppState fromJson(Map<String, dynamic> data) =>
      serializers.deserializeWith(AppState.serializer, data);
}
