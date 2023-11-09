import 'package:flutter/material.dart';
import 'package:scale_design/scale_design.dart';

class SlideTextExample extends StatelessWidget {
  const SlideTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: T(
          'SlideText Example',
          fontSize: 18,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          T('This is an example of scrolling up:'),
          const SlideText(
            [
              'You have unread messages, please handle them as soon as possible1',
              'You have unread messages, please handle them as soon as possible2',
              'You have unread messages, please handle them as soon as possible3',
              'You have unread messages, please handle them as soon as possible4',
            ],
          ),
          T('This is an example of scrolling down:'),
          const SlideText(
            [
              'You have unread messages, please handle them as soon as possible1',
              'You have unread messages, please handle them as soon as possible2',
              'You have unread messages, please handle them as soon as possible3',
              'You have unread messages, please handle them as soon as possible4',
            ],
            isScrollUp:
                false, // The isScrollUp parameter defaults to true, indicating scrolling up
          ),
        ],
      ),
    );
  }
}
