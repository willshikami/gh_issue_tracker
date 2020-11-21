import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

import 'package:gh_issue_tracker/constants/app_theme.dart';
import 'package:gh_issue_tracker/logic/app_state.dart';
import 'package:gh_issue_tracker/ui/home/homepage.dart';

Store<AppState> store;
void main() async {
  store = Store<AppState>(
    initialState: AppState(),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Issue Tracker',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: appTheme(),
        // onGenerateRoute: RouterGenerator.generateRoute,
      ),
    );
  }
}
