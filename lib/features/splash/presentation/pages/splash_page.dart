import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joy_bor/core/constants/icons.dart';
import 'package:joy_bor/core/shared/app_scafold.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScafold(child: Center(child: SvgPicture.asset(AppIcons.logo)));
  }
}