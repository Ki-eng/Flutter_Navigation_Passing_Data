import 'package:flutter/material.dart';
import 'customButton.dart';
import 'customCard.dart';

class Aboutscreen extends StatelessWidget {
  static const routeName = '/about';

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('About Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Customcard(
            height: 200,
            elevation: 10,
            shadowColor: Colors.grey,
            headingWidget: Text(
              'This is about screen',
              style: theme.textTheme.headlineMedium,
            ),
          ),
          CustomButton(
            onPress: () => Navigator.pop(context),
            title: 'Go Back',
            backgroundColor: Colors.indigo,
          )
        ],
      ),
    );
  }
}
