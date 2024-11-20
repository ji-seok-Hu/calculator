// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:coding/main.dart';

void main() {
  String str = "Dart And Flutter";

  int index = str.indexOf("And");
  print(index);

  index = str.indexOf("tter");
  print(index);

  index = str.indexOf("Hello");
  print(index);
}