import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:joy_bor/core/constants/colors.dart';

class AppScafold extends StatelessWidget {
  const AppScafold({super.key, required this.child, this.appBar});

  final Widget child;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: ColoredBox(
          color: AppColors.black,
          child: Stack(
            children: [
              const Positioned(
                right: -7,
                top: 250,
                child: SizedBox(
                  width: 187,
                  height: 187,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.yellow3,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              const Positioned(
                bottom: 48,
                left: -25,
                child: SizedBox(
                  width: 268,
                  height: 268,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.yellow7,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 300, sigmaY: 300),
                  child: const SizedBox(),
                ),
              ),
              child
            ],
          ),
        ),

      ),
    );
  }
}