import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gh_issue_tracker/constants/app_theme.dart';

class AppTitle extends StatefulWidget {
  _AppTitleState createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  final thisDay = DateFormat.EEEE().format(DateTime.now());
  final thisMonth = DateFormat.MMMM().format(DateTime.now());
  final thisDate = DateFormat.d().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //The day
          Text(
            'Today',
            style: Theme.of(context).textTheme.headline1.copyWith(
                  color: appTheme().shadowColor,
                ),
          ),
          SizedBox(
            height: 6,
          ),
          //The date
          Row(
            children: [
              Text(
                '$thisDay,',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                thisDate,
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                thisMonth,
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            height: 48,
            decoration: BoxDecoration(
              color: appTheme().backgroundColor,
              borderRadius: BorderRadius.circular(24),
            ),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: 'Search for issue',
                prefixIcon: Icon(
                  Icons.search,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Text(
                      'Filter by',
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            color: appTheme().primaryColorDark,
                          ),
                    ),
                  ),
                  SizedBox(width: 36),
                  GestureDetector(
                    child: Text(
                      'Date',
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            color: appTheme().primaryColorDark,
                          ),
                    ),
                  ),
                  SizedBox(width: 36),
                  GestureDetector(
                    child: Text(
                      'iOS',
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            color: appTheme().primaryColorDark,
                          ),
                    ),
                  ),
                  SizedBox(width: 36),
                  GestureDetector(
                    child: Text(
                      'Xcode',
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            color: appTheme().primaryColorDark,
                          ),
                    ),
                  ),
                  SizedBox(width: 36),
                  GestureDetector(
                    child: Text(
                      'MacOS',
                      style: Theme.of(context).textTheme.headline2.copyWith(
                            color: appTheme().primaryColorDark,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
