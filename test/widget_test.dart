// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:social_media_app/model/userpost.dart';
import 'package:social_media_app/views/profileview.dart';

void main() {
  testWidgets('posting a comment adds it to the post', (
    WidgetTester tester,
  ) async {
    final post = Userpost(
      userimg: 'assets/person1.jpg',
      username: 'Jane Doe',
      time: '2 hrs ago',
      postcontent: 'Had a great day at the beach!',
      postimg: 'assets/beach.jpg',
      numcomments: '24',
      numshare: '5',
      isLiked: false,
    );

    await tester.pumpWidget(MaterialApp(home: ProfileView(userpost: post)));

    await tester.enterText(find.byType(TextField), 'Nice photo!');
    await tester.tap(find.byTooltip('Post comment'));
    await tester.pump();

    expect(find.text('Nice photo!'), findsOneWidget);
    expect(find.text('Charisse Priego'), findsOneWidget);
    expect(find.text('Just now'), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
    expect(tester.widget<TextField>(find.byType(TextField)).controller!.text, isEmpty);
  });
}
