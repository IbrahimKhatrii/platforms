/// Entry point for the `platforms` package.
///
/// This file exposes a single `Platform` class, whose implementation is
/// selected at compile time using conditional exports:
///
///   • Stub implementation
///       → used when neither `dart:io` nor `dart:html` is available
///
///   • IO implementation
///       → selected when `dart:io` is supported
///         (Android, iOS, Windows, Linux, macOS, CLI)
///
///   • Web implementation
///       → selected when `dart:html` is available
///         (Browser builds)
///
/// Consumers should always import this file:
///
/// ```dart
/// import 'package:platforms/platforms.dart';
///
/// if (Platform.isWeb) { ... }
/// if (Platform.isAndroid) { ... }
/// ```
///
/// The actual implementation behind `Platform` is transparently handled by
/// Dart's conditional import system.
/// No caller should import the platform-specific files directly.

// ignore: unnecessary_library_name
library platforms;

export 'src/platform/stub/universal_platform_stub.dart'
    if (dart.library.io) '/platform/Platforms/universal_platform_io.dart'
    if (dart.library.html) '/platform/Platforms/stub/universal_platform_web.dart'
    show Platform;
