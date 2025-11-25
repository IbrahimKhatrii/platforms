// ignore_for_file: avoid_print

import 'package:platformer/platformer.dart';

void main() {
  // This example demonstrates how Platformer.* flags behave on:
  // - Mobile (Android / iOS)
  // - Web
  // - Desktop (Windows / Linux / macOS)
  //
  // Behavior rules:
  //   • Mobile & Desktop → uses dart:io → accurate values.
  //   • Web → dart:io unavailable → all flags return false by design.

  final isWeb = Platformer.isWeb;
  final isAndroid = Platformer.isAndroid;
  final isIOS = Platformer.isIOS;
  final isWindows = Platformer.isWindows;
  final isLinux = Platformer.isLinux;
  final isMacOS = Platformer.isMacOS;

  print('Web: $isWeb');
  print('Android: $isAndroid');
  print('iOS: $isIOS');
  print('Windows: $isWindows');
  print('Linux: $isLinux');
  print('macOS: $isMacOS');

  // Practical usage example:
  if (isWeb) {
    print('Running on Web — platformer flags are limited.');
  } else if (isAndroid) {
    print('Android-specific logic here.');
  } else if (isIOS) {
    print('iOS-specific logic here.');
  } else if (isWindows) {
    print('Windows desktop logic here.');
  } else if (isLinux) {
    print('Linux desktop logic here.');
  } else if (isMacOS) {
    print('macOS desktop logic here.');
  } else {
    print('Unknown platformer — unlikely, but check your setup.');
  }
}
