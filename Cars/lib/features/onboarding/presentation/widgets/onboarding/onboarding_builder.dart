import 'package:cars/features/onboarding/domain/entites/onboarding_entites.dart';
import 'package:cars/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:cars/features/onboarding/presentation/cubit/onboarding_state.dart';
import 'package:cars/features/onboarding/presentation/widgets/onboarding/onboarding_button.dart';
import 'package:cars/features/onboarding/presentation/widgets/onboarding/onboarding_image.dart';
import 'package:cars/features/onboarding/presentation/widgets/onboarding/onboarding_sub_title.dart';
import 'package:cars/features/onboarding/presentation/widgets/onboarding/onboarding_title.dart';
import 'package:cars/features/home/presentation/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingBuilder extends StatelessWidget {
  final PageController controller;
  final int pagecount;
  final Function(int) onPageChanged;
  final Function() onCompleteOnboarding;

  const OnboardingBuilder({
    required this.controller,
    required this.pagecount,
    required this.onPageChanged,
    required this.onCompleteOnboarding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: BlocBuilder<OnboardingCubit,
          OnboardingState<List<OnboardingEntites>>>(
        builder: (context, state) {
          return state.when(
            idle: () => const SizedBox.shrink(),
            loaded: (List<OnboardingEntites> data) {
              return PageView.builder(
                controller: controller,
                onPageChanged: onPageChanged,
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      OnboardingImage(imageName: data[index].image),
                      OnboardingTitle(title: data[index].title),
                      OnboardingSubTitle(subTitle: data[index].subTitle),
                      OnboardingButton(
                        onPressed: () {
                          if (pagecount < data.length - 1) {
                            onPageChanged(pagecount + 1);
                            controller.animateToPage(
                              pagecount + 1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.fastEaseInToSlowEaseOut,
                            );
                          } else {
                            onCompleteOnboarding();
                          }
                        },
                      ),
                    ],
                  );
                },
              );
            },
            compeleted: () => Home(),
          );
        },
      ),
    );
  }
}
