import 'package:flutter/material.dart';
import 'package:gh_issue_tracker/constants/app_theme.dart';

class SpacedContainer extends StatelessWidget {
  final Widget containerChild;

  const SpacedContainer({
    Key key,
    this.containerChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),
      color: appTheme().splashColor,
      child: containerChild,
    );
  }
}

class SpacedListItemContainer extends StatelessWidget {
  final Widget containerChild;

  const SpacedListItemContainer({
    Key key,
    this.containerChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 24,
      ),
      color: appTheme().splashColor,
      child: containerChild,
    );
  }
}
