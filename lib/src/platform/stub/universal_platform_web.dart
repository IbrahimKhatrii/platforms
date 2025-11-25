/// Web-specific implementation of the `Platform` class.
///
/// This version is selected when the code is compiled for the browser.
/// Since the web environment does not expose native platform details,
/// this implementation simply hardcodes the values:
///
///   • `isWeb`     → always `true`
///   • All others → always `false`
///
/// This reflects the fact that a browser cannot reliably report whether
/// the user is on Android, iOS, Windows, Linux, or macOS at the OS level —
/// and such detection is intentionally outside the scope of this package.
///
/// Always import via:
///     import 'package:platforms/platforms.dart';
///
/// This file should never be imported directly.
class Platform {
  /// Indicates that this runtime is the Web.
  ///
  /// Always returns `true` in the web implementation.
  static bool get isWeb => true;

  /// Indicates whether the runtime is Android.
  ///
  /// Always returns `false` in the web implementation.
  static bool get isAndroid => false;

  /// Indicates whether the runtime is iOS.
  ///
  /// Always returns `false` in the web implementation.
  static bool get isIOS => false;

  /// Indicates whether the runtime is Windows desktop.
  ///
  /// Always returns `false` in the web implementation.
  static bool get isWindows => false;

  /// Indicates whether the runtime is Linux desktop.
  ///
  /// Always returns `false` in the web implementation.
  static bool get isLinux => false;

  /// Indicates whether the runtime is macOS desktop.
  ///
  /// Always returns `false` in the web implementation.
  static bool get isMacOS => false;
}
