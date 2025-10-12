import 'package:flutter/widgets.dart';

class Dimensions {
  Dimensions._(this.context);

  final BuildContext context;

  factory Dimensions.of(BuildContext context) => Dimensions._(context);

  // Base spacing scale
  static const double spacingXS = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 16.0;
  static const double spacingL = 24.0;
  static const double spacingXL = 32.0;

  // Fixed element sizes
  static const double avatarSizeS = 32.0;
  static const double avatarSizeM = 48.0;
  static const double avatarSizeL = 72.0;

  // Screen padding
  double get paddingScreenHorizontal => _isTablet ? 32.0 : 16.0;
  double get paddingScreenVertical => 16.0;

  EdgeInsets get edgeInsetsScreenSymmetric => EdgeInsets.symmetric(
        horizontal: paddingScreenHorizontal,
        vertical: paddingScreenVertical,
      );

  // Breakpoints (simple)
  bool get _isTablet => MediaQuery.sizeOf(context).shortestSide >= 600;
  bool get _isDesktop => MediaQuery.sizeOf(context).width >= 1024;

  bool get isTablet => _isTablet;
  bool get isDesktop => _isDesktop;

  /// Example for responsive column count
  int getOptimalColumns(double maxWidth) {
    if (maxWidth >= 1200) return 4;
    if (maxWidth >= 800) return 3;
    if (maxWidth >= 600) return 2;
    return 1;
  }
}
