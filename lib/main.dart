import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

import 'package:gh_issue_tracker/constants/app_theme.dart';
import 'package:gh_issue_tracker/business/redux/app_state.dart';
import 'package:gh_issue_tracker/presentation/home/homepage.dart';

Store<AppState> store;
void main() async {
  store = Store<AppState>(
    initialState: AppState.initial(),
    // actionObservers: [Log<AppState>.printer()],
    // modelObserver: DefaultModelObserver(),
  );
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: appTheme(),
        // onGenerateRoute: RouterGenerator.generateRoute,
      ),
    );
  }
}
