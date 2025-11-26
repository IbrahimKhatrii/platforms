/// Entry point for the `platformers` package.
///
/// This file exposes a single `Platformer` class, whose implementation is
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
/// import 'package:platformers/platformers.dart';
///
/// if (Platformer.isWeb) { ... }
/// if (Platformer.isAndroid) { ... }
/// ```
///
/// The actual implementation behind `Platformer` is transparently handled by
/// Dart's conditional import system.
/// No caller should import the platform-specific files directly.

// ignore: unnecessary_library_name
library platformers;

export 'src/platformer/stub/universal_platformer_stub.dart'
    if (dart.library.io) 'src/platformer/universal_platformer_io.dart'
    if (dart.library.html) 'src/platformer/stub/universal_platformer_web.dart'
    show Platformer;
