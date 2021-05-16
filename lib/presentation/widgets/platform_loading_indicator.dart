import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformLoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TargetPlatform _platform = Theme.of(context).platform;
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              child: _platform == TargetPlatform.iOS
                  ? CupertinoTheme(
                      data: CupertinoTheme.of(context),
                      child: const CupertinoActivityIndicator(radius: 16),
                    )
                  : CircularProgressIndicator(
                      strokeWidth: 2, backgroundColor: Colors.grey),
            ),
            SizedBox(height: 8),
            Text('LOADING', style: Theme.of(context).textTheme.bodyText1)
          ],
        ),
      ),
    );
  }
}
