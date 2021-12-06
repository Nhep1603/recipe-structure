import 'package:flutter/material.dart';

import '../constants/constants.dart' as constants;

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < constants.AppConstants.maxMobileWidth;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= constants.AppConstants.maxMobileWidth;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= constants.AppConstants.maxMobileWidth) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}