import 'dart:ui';

/// Find all examples here: https://api.flutter.dev/flutter/dart-ui/ColorFilter/ColorFilter.matrix.html
class ColorFilters {
  static const greyscale = ColorFilter.matrix(<double>[
    /// matrix
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0, 0, 0, 1, 0
  ]);

  static const sepia = ColorFilter.matrix(<double>[
    /// matrix
    0.393, 0.769, 0.189, 0, 0,
    0.349, 0.686, 0.168, 0, 0,
    0.272, 0.534, 0.131, 0, 0,
    0, 0, 0, 1, 0,
  ]);

  static const invert = ColorFilter.matrix(<double>[
    /// matrix
    -1, 0, 0, 0, 255,
    0, -1, 0, 0, 255,
    0, 0, -1, 0, 255,
    0, 0, 0, 1, 0,
  ]);
}
