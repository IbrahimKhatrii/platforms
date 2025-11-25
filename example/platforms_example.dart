// ignore_for_file: avoid_print

import 'package:platforms/platforms.dart';

void main() {
  // This example demonstrates how Platform.* flags behave on:
  // - Mobile (Android / iOS)
  // - Web
  // - Desktop (Windows / Linux / macOS)
  //
  // Behavior rules:
  //   • Mobile & Desktop → uses dart:io → accurate values.
  //   • Web → dart:io unavailable → all flags return false by design.

  final isWeb = Platform.isWeb;
  final isAndroid = Platform.isAndroid;
  final isIOS = Platform.isIOS;
  final isWindows = Platform.isWindows;
  final isLinux = Platform.isLinux;
  final isMacOS = Platform.isMacOS;

  print('Web: $isWeb');
  print('Android: $isAndroid');
  print('iOS: $isIOS');
  print('Windows: $isWindows');
  print('Linux: $isLinux');
  print('macOS: $isMacOS');

  // Practical usage example:
  if (isWeb) {
    print('Running on Web — platform flags are limited.');
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
    print('Unknown platform — unlikely, but check your setup.');
  }
}
