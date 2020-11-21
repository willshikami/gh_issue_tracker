import 'package:gh_issue_tracker/logic/issues/models/issues_model.dart';

class AppState {
  final List<Issue> issues;
  final bool isLoading;

  AppState({
    this.isLoading,
    this.issues,
  });

// check the state of state
  AppState copy({
    List<Issue> issues,
    bool isLoading,
  }) =>
      AppState(
        issues: issues ?? this.issues,
        isLoading: isLoading ?? this.isLoading,
      );

// initialize state
  AppState initialState() => AppState(
        issues: <Issue>[],
        isLoading: false,
      );

// quality checks
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          issues == other.issues &&
          isLoading == other.isLoading;

  @override
  int get hashCode => issues.hashCode ^ isLoading.hashCode;
}
