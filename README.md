# Flutter Responsive Layout Widget

A Flutter widget for creating responsive layouts based on screen width.

how to use ?

```dart
AppLayout(
  standardBuilder: (height, width) => const Text('standard'),
  wideBuilder: (height, width) => const Text('wide'),
  threshold: 1000,
)