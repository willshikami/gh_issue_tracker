import 'package:async_redux/async_redux.dart';
import 'package:gh_issue_tracker/business/redux/app_state.dart';

class AppActionsStateActions extends ReduxAction<AppState> {
  final isLessThanADay;

  AppActionsStateActions({
    this.isLessThanADay,
  });

  @override
  AppState reduce() {
    return state.rebuild((AppStateBuilder b) => b
      ..appActionsState = state.appActionsState.copy(
        isLessThanADay: isLessThanADay,
      ));
  }
}
