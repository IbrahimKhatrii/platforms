/// Stub implementation used when no platform-specific backend is available.
///
/// This class acts as the default fallback when the package cannot access
/// actual platform information. Typical scenarios include:
///   • Web builds where `dart:io` is not allowed
///   • Any build that resolves to the stub through conditional imports
///
/// In this stub implementation, **all getters always return `false`**.
/// Real platform detection is provided by the dedicated implementations:
///   • `platformer_io.dart`  (Android, iOS, Windows, Linux, macOS)
///   • `platformer_web.dart` (Browser)
///
/// Always import the package entrypoint:
///     import 'package:platformers/platformers.dart';
///
/// Do not rely on this file directly.
class Platformer {
  /// Indicates whether the code is running in a Web environment.
  ///
  /// Stub version → always returns `false`.
  static bool get isWeb => false;

  /// Indicates whether the runtime is Android (IO implementation only).
  ///
  /// Stub version → always returns `false`.
  static bool get isAndroid => false;

  /// Indicates whether the runtime is iOS (IO implementation only).
  ///
  /// Stub version → always returns `false`.
  static bool get isIOS => false;

  /// Indicates whether the runtime is Windows desktop (IO implementation only).
  ///
  /// Stub version → always returns `false`.
  static bool get isWindows => false;

  /// Indicates whether the runtime is Linux desktop (IO implementation only).
  ///
  /// Stub version → always returns `false`.
  static bool get isLinux => false;

  /// Indicates whether the runtime is macOS desktop (IO implementation only).
  ///
  /// Stub version → always returns `false`.
  static bool get isMacOS => false;
}
