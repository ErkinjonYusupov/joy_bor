import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joy_bor/core/constants/icons.dart';
import 'package:joy_bor/core/shared/app_scafold.dart';
import 'package:joy_bor/features/splash/presentation/cubit/splash_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return state.when(
          loading: () =>
              AppScafold(child: Center(child: SvgPicture.asset(AppIcons.logo))),
          onboarding: () => const SizedBox.shrink(),
          auth: () => const SizedBox.shrink(),
          main: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
