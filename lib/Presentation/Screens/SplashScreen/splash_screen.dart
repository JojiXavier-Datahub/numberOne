import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_one_academy_v2/Application/SplashScreen/splash_screen_bloc.dart';
import 'package:number_one_academy_v2/Presentation/Widgets/onboarding_background.dart';
import '../../../Utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
 
  @override
  void initState() {
    super.initState();
    context.read<SplashScreenBloc>().add(SplashScreenEvent.changeSize(context));
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<SplashScreenBloc, SplashScreenState>(
        builder: (context, state) {
      return Stack(
        children: [
          state.logoChange ? const OnboarBackGround() : const SizedBox(),
          splashScreenWidget(),
        ],
      );
    }));
  }

  Column splashScreenWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: BlocBuilder<SplashScreenBloc, SplashScreenState>(
                builder: (context, state) {
              return AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: state.sizechange ? 271.33 : 176.0,
                height: state.sizechange ? 204.21 : 132.0,
                child: SvgPicture.asset(
                  splashLogo,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
