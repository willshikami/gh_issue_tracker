import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gh_issue_tracker/constants/app_theme.dart';
import 'package:gh_issue_tracker/logic/issues/models/issues_model.dart';
import 'package:gh_issue_tracker/ui/widgets/containers.dart';

class IssuesList extends StatefulWidget {
  final List<Issue> issues;
  final VoidCallback loadIssues;
  final bool isLoading;
  const IssuesList({Key key, this.issues, this.loadIssues, this.isLoading})
      : super(key: key);

  @override
  _IssuesListState createState() => _IssuesListState();
}

class _IssuesListState extends State<IssuesList> {
  // ScrollController _controller;

  // @override
  // void initState(){
  //   _controller = ScrollController()
  //   ..addListener(() {
  //     if widget.isLoading && _controller.position.maxScrollExtent == _controller.position.pixels){
  //       widget.loadMore;
  //     }
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> issues = [
      {
        "issueTitle":
            "Compilation error building on iOS simulator: fatal error: could not build module 'Foundation'",
        "openedDate": "29 Oct 2019",
        "issueStatus": "Open",
        "username": "developerslearnit",
        "comments": "55"
      },
      {
        "issueTitle":
            "Compilation error building on iOS simulator: fatal error: could not build module 'Foundation'",
        "openedDate": "29 Oct 2019",
        "issueStatus": "Open",
        "username": "developerslearnit",
        "comments": "55"
      },
      {
        "issueTitle":
            "Compilation error building on iOS simulator: fatal error: could not build module 'Foundation'",
        "openedDate": "29 Oct 2019",
        "issueStatus": "Open",
        "username": "developerslearnit",
        "comments": "55"
      },
      {
        "issueTitle":
            "Compilation error building on iOS simulator: fatal error: could not build module 'Foundation'",
        "openedDate": "29 Oct 2019",
        "issueStatus": "Open",
        "username": "developerslearnit",
        "comments": "55"
      },
    ];
    // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          // Load the lists here
          widget.issues == null
              ? Container()
              : List.generate(
                  issues.length,
                  (index) => IssuesCard(
                    dateOpened: issues[index]['openedDate'],
                    issueComments: issues[index]['comments'],
                    issueStatus: issues[index]['issueStatus'],
                    issueTitle: '${issues[index]['issueTitle']} ',
                    issueUser: issues[index]['username'],
                  ),
                ),
        ],
      ),
    );
  }
}

class IssuesCard extends StatelessWidget {
  const IssuesCard(
      {Key key,
      @required this.issueTitle,
      @required this.dateOpened,
      @required this.issueStatus,
      @required this.issueUser,
      @required this.issueComments,
      this.issueNumber})
      : super(key: key);

  final String issueTitle;
  final String dateOpened;
  final String issueStatus;
  final String issueUser;
  final String issueComments;
  final String issueNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 6,
      ),
      child: SpacedContainer(
        containerChild: Column(
          children: <Widget>[
            // Card title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Date
                Row(
                  children: [
                    Text(
                      'Opened',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: appTheme().textSelectionHandleColor,
                          ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      dateOpened,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: appTheme().textSelectionHandleColor,
                          ),
                    )
                  ],
                ),
                //Issue Status
                Container(
                  decoration: BoxDecoration(
                    color: appTheme().primaryColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  child: Text(
                    issueStatus,
                    style: Theme.of(context).textTheme.bodyText1.copyWith(
                          color: appTheme().splashColor,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            // Issue title
            Container(
              padding: EdgeInsets.only(right: 4, left: 4),
              child: Row(
                children: [
                  Flexible(
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        // Issue title
                        TextSpan(
                          text: issueTitle,
                          style: Theme.of(context).textTheme.headline4.copyWith(
                                color: appTheme().textSelectionColor,
                              ),
                        ),
                        // Issue Number
                        TextSpan(
                          text: '#',
                          style: Theme.of(context).textTheme.headline4.copyWith(
                                color: appTheme().accentColor,
                              ),
                        ),
                        TextSpan(
                          text: issueNumber,
                          style: Theme.of(context).textTheme.headline4.copyWith(
                                color: appTheme().accentColor,
                              ),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // User
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/user.svg',
                        height: 18,
                        width: 18,
                        color: appTheme().textSelectionHandleColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        issueUser,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: appTheme().textSelectionHandleColor,
                            ),
                      )
                    ],
                  ),
                  // Comments
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/message.svg',
                        height: 16,
                        width: 16,
                        color: appTheme().textSelectionHandleColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        issueComments,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: appTheme().textSelectionHandleColor,
                            ),
                      ),
                      Text(
                        ' comments',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: appTheme().textSelectionHandleColor,
                            ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
