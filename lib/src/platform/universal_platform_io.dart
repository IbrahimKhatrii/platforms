import 'dart:io' as io;

/// IO-specific implementation of the `Platform` class.
///
/// This version is used on environments where `dart:io` is available,
/// such as:
///   • Flutter mobile (Android, iOS)
///   • Flutter desktop (Windows, Linux, macOS)
///   • Dart standalone CLI
///
/// The values provided by this implementation are sourced directly from
/// `dart:io`'s `Platform` class, ensuring accurate detection of the host OS.
///
/// Web builds never reach this file because `dart:io` is not available there.
/// Conditional imports automatically select the `platform_web.dart` version.
///
/// Always import via:
///     import 'package:platforms/platforms.dart';
///
/// This file should not be imported directly.
class Platform {
  /// Indicates whether the code is running in a Web environment.
  ///
  /// Always returns `false` in the IO implementation, because any build
  /// that can load `dart:io` is guaranteed not to be the Web.
  static bool get isWeb => false;

  /// Indicates whether the runtime platform is Android.
  static bool get isAndroid => io.Platform.isAndroid;

  /// Indicates whether the runtime platform is iOS.
  static bool get isIOS => io.Platform.isIOS;

  /// Indicates whether the runtime platform is Windows desktop.
  static bool get isWindows => io.Platform.isWindows;

  /// Indicates whether the runtime platform is Linux desktop.
  static bool get isLinux => io.Platform.isLinux;

  /// Indicates whether the runtime platform is macOS desktop.
  static bool get isMacOS => io.Platform.isMacOS;
}
