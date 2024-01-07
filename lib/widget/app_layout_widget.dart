//? ---------- External Packages ----------//
import 'package:flutter/material.dart';
//? ---------- Internal Packages ----------//

//* ------------------------------
//* Widget
//* ------------------------------
class AppLayout extends StatelessWidget {
  //* ------------------------------
  //* Constructor
  //* ------------------------------
  const AppLayout({
    super.key,
    this.threshold = 800,
    required this.standardBuilder,
    this.wideBuilder,
  });

  //* ------------------------------
  //* Parameters
  //* ------------------------------
  final Widget Function(double height, double width) standardBuilder;
  final Widget Function(double height, double width)? wideBuilder;
  final double? threshold;

  @override
  Widget build(BuildContext context) {
    //* Variables
    final Size mediaQuery = MediaQuery.sizeOf(context);
    final ({double width, double height}) size = (
      width: mediaQuery.width,
      height: mediaQuery.height,
    );

    return context.size!.width < threshold!
        ? standardBuilder(
            size.height,
            size.width,
          )
        : wideBuilder != null
            ? wideBuilder!(
                size.height,
                size.width,
              )
            : standardBuilder(
                size.height,
                size.width,
              );
  }
}
