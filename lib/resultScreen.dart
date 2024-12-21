import 'package:flutter/material.dart';
import 'package:navigation_passing_data_app/customCard.dart';
import 'package:navigation_passing_data_app/resetQuizStatus.dart';
import 'customButton.dart';

class Resultscreen extends StatelessWidget {
  static const routeName = '/result';
  Resultscreen({this.score = 0, this.totalAttempted = 0});

  final int score;
  final int totalAttempted;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('RESULT Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Customcard(
              elevation: 10,
              shadowColor: Colors.grey,
              height: 200,
              headingWidget: Text(
                'Quiz Ended',
                style: theme.textTheme.headlineMedium,
              ),
              bodyWidget: Text(
                'Score $score/$totalAttempted',
                style: theme.textTheme.headlineMedium,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  onPress: () => Navigator.pop(
                    context,
                    Resetquizstatus(status: 'reset'),
                  ),
                  title: 'RESTART',
                  backgroundColor: Colors.indigo,
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
