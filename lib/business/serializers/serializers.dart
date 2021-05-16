import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:gh_issue_tracker/business/redux/app_state.dart';
import 'package:gh_issue_tracker/business/redux/models/app_actions_state.dart';
import 'package:gh_issue_tracker/business/redux/models/issues_filter_list_state.dart';
import 'package:gh_issue_tracker/business/redux/models/issues_state.dart';
import 'package:gh_issue_tracker/business/redux/models/issues_list_state.dart';

part 'serializers.g.dart';

@SerializersFor([
  AppState,
  AppActionsState,
  GithubIssuesState,
  GithubIssuesListState,
  GithubIssuesFilterListState,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
