import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:gh_issue_tracker/business/redux/actions/app_actions_state_actions.dart';
import 'package:gh_issue_tracker/business/redux/app_state.dart';
import 'package:gh_issue_tracker/constants/app_theme.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class AppUtils {
  static Widget sortDate({
    @required BuildContext context,
    @required String loadedDate,
  }) {
    final parsedDate = DateTime.parse(loadedDate);
    final postDayTime = DateFormat.jm().format(parsedDate);
    final postDay = DateFormat.d().format(parsedDate);
    final postMonth = DateFormat.MMM().format(parsedDate);
    final postYear = DateFormat.y().format(parsedDate);

    var currentDate = DateTime.now();

    var timeRemaining = parsedDate.subtract(Duration(hours: 24));
    var anotherValue = timeago.format(timeRemaining);

    if (currentDate.compareTo(parsedDate) < 24) {
      StoreProvider.dispatch(
        context,
        AppActionsStateActions(isLessThanADay: true),
      );
    }

    final bool lessThanADay =
        StoreProvider.state<AppState>(context).appActionsState.isLessThanADay;

    return Container(
      child: lessThanADay
          ? Text(
              '$anotherValue ',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: appTheme().primaryColorDark,
                  ),
            )
          : Row(
              children: [
                Text(
                  '$postDay ',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: appTheme().primaryColorDark,
                      ),
                ),
                Text(
                  '$postMonth ',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: appTheme().primaryColorDark,
                      ),
                ),
                Text(
                  '$postYear',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: appTheme().primaryColorDark,
                      ),
                ),
                Text(
                  'at ',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: appTheme().primaryColorDark,
                      ),
                ),
                Text(
                  '$postDayTime ',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: appTheme().primaryColorDark,
                      ),
                ),
              ],
            ),
    );
  }
}
