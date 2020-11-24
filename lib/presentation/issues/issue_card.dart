import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gh_issue_tracker/business/utils/app_utils.dart';
import 'package:gh_issue_tracker/constants/app_theme.dart';
import 'package:gh_issue_tracker/presentation/widgets/containers.dart';
import 'package:url_launcher/url_launcher.dart';

class IssuesCard extends StatelessWidget {
  const IssuesCard({
    Key key,
    @required this.issueTitle,
    @required this.dateOpened,
    @required this.issueStatus,
    @required this.issueUser,
    @required this.issueComments,
    @required this.userAvatar,
    this.postLink,
    this.issueNumber,
  }) : super(key: key);

  final String issueTitle;
  final String dateOpened;
  final String issueStatus;
  final String postLink;
  final String issueUser;
  final int issueComments;
  final int issueNumber;
  final String userAvatar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch(postLink)) {
          await launch(postLink);
        } else {
          throw 'Could not launch $postLink';
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: appTheme().backgroundColor,
            ),
          ),
        ),
        margin: EdgeInsets.only(
          top: 6,
        ),
        child: SpacedListItemContainer(
          containerChild: Column(
            children: <Widget>[
              // Card title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // User
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(userAvatar),
                        backgroundColor: appTheme().primaryColorLight,
                        radius: 12,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        issueUser,
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              color: appTheme().primaryColorDark,
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
                            style:
                                Theme.of(context).textTheme.headline4.copyWith(
                                      color: appTheme().shadowColor,
                                    ),
                          ),
                          // Issue Number
                          TextSpan(
                            text: ' #',
                            style:
                                Theme.of(context).textTheme.headline4.copyWith(
                                      color: appTheme().accentColor,
                                    ),
                          ),
                          TextSpan(
                            text: '$issueNumber',
                            style:
                                Theme.of(context).textTheme.headline4.copyWith(
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
                    //Date
                    AppUtils.sortDate(
                      context: context,
                      loadedDate: dateOpened,
                    ),
                    // Comments
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/message.svg',
                          height: 16,
                          width: 16,
                          color: appTheme().primaryColorDark,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          '$issueComments',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: appTheme().primaryColorDark,
                              ),
                        ),
                        Text(
                          ' comments',
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                                color: appTheme().primaryColorDark,
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
      ),
    );
  }
}
