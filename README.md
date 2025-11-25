# **platformer**

A lightweight, compile-time–selected platformer detection utility for Dart and Flutter.
This package provides a single, consistent `Platform` API that works across:

- **Web**
- **Android**
- **iOS**
- **Windows**
- **Linux**
- **macOS**
- **Standalone Dart CLI**
- **Any environment without a known platformer backend (stub)**

The correct implementation is chosen automatically through conditional imports.
No manual configuration, no fragile checks, and no runtime guessing.

---

## **Purpose**

Dart’s platform detection APIs differ between `dart:io`, `dart:html`, Flutter, and CLI environments.
This package standardizes that behavior by exposing a single, unified `Platformer` class:

- **Web builds** → 100% web-specific implementation
- **IO builds** → backed directly by `dart:io.Platformer`
- **Unsupported/unknown builds** → safe stub fallback

This ensures deterministic behavior with zero ambiguity.

---

## **Features**

- ✔ Automatic platform selection
- ✔ Web-first support
- ✔ Native mobile & desktop detection
- ✔ Zero dependencies on Flutter (works in pure Dart)
- ✔ Predictable behavior using stub fallback
- ✔ Minimal API surface
- ✔ Production-ready reliability

---

## **Installation**

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  platformer: ^1.0.0
```

Then import it:

```dart
import 'package:platformer/platformer.dart';
```

---

## **Usage**

The API is intentionally simple and mirrors Dart’s native naming.

```dart
import 'package:platformer/platformer.dart';

void main() {
  if (Platformer.isWeb) {
    print('Running on the web');
  }

  if (Platformer.isAndroid) {
    print('Running on Android');
  }

  if (Platformer.isWindows) {
    print('Running on Windows');
  }
}
```

### **Available getters**

| Getter      | Web | Android | iOS | Windows | Linux | macOS | Stub |
| ----------- | --- | ------- | --- | ------- | ----- | ----- | ---- |
| `isWeb`     | ✔️  | ❌      | ❌  | ❌      | ❌    | ❌    | ❌   |
| `isAndroid` | ❌  | ✔️      | ❌  | ❌      | ❌    | ❌    | ❌   |
| `isIOS`     | ❌  | ❌      | ✔️  | ❌      | ❌    | ❌    | ❌   |
| `isWindows` | ❌  | ❌      | ❌  | ✔️      | ❌    | ❌    | ❌   |
| `isLinux`   | ❌  | ❌      | ❌  | ❌      | ✔️    | ❌    | ❌   |
| `isMacOS`   | ❌  | ❌      | ❌  | ❌      | ❌    | ✔️    | ❌   |

---

## **How the detection works**

The correct implementation is chosen automatically by Dart:

```dart
export 'stub.dart'
    if (dart.library.io) 'platformer_io.dart'
    if (dart.library.html) 'platformer_web.dart';
```

This guarantees:

- **Web builds never import `dart:io`**
- **IO builds never import `dart:html`**
- **Unknown builds use the stub implementation safely**

You always interact with a single API:

```dart
Platformer.isWeb;
Platformer.isAndroid;
...
```

---

## **Design philosophy**

This package follows strict principles:

### **1. Zero platformer guessing**

No UA parsing, no indirect heuristics, no assumptions.
If the platform cannot be identified, it defaults to a safe stub.

### **2. Zero Flutter dependency**

Works the same in pure Dart and Flutter projects.

### **3. Predictable results**

Every getter has a clearly defined outcome across environments.

### **4. Minimal API, maximal clarity**

One class. Six booleans. Nothing else.

---

## **Example: full output**

```dart
void main() {
  print('Web: ${Platformer.isWeb}');
  print('Android: ${Platformer.isAndroid}');
  print('iOS: ${Platformer.isIOS}');
  print('Windows: ${Platformer.isWindows}');
  print('Linux: ${Platformer.isLinux}');
  print('macOS: ${Platformer.isMacOS}');
}
```

Output depends entirely on the build target.

---

## **When should you use this package?**

Use `platformer` if you:

- want platform checks that work identically in Dart, Flutter, and Web
- want a stable interface without worrying about conditional imports
- want a reliable fallback when no platform information exists
- want a dependency-free solution that relies on Dart’s own feature flags

Do **not** use this package if you require:

- browser user-agent inspection
- device model identification
- environment fingerprinting

This package intentionally avoids those areas.

---

## **License**

MIT — free for personal and commercial use.

---
