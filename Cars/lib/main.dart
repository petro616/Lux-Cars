import 'package:cars/core/dependency_injection.dart';
import 'package:cars/features/home/presentation/cubit/categories_cubit.dart';
import 'package:cars/features/home/presentation/cubit/home_cubit.dart';
import 'package:cars/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:cars/generate_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  runApp(const MyApp());
}

void initDependencies() {
  onBoardingGetIt();
  homeGetIt();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            onGenerateRoute: AppRoute().generateRoutes,
            theme: ThemeData(
              fontFamily: "PlayfairDisplay",
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: "/",
            builder: (context, child) {
              return MultiBlocProvider(providers: [
                BlocProvider(
                  create: (context) => getIt<OnboardingCubit>(),
                ),
                BlocProvider(
                  create: (context) => getIt<HomeCubit>(),
                ),
                BlocProvider(
                  create: (context) => getIt<CategoriesCubit>(),
                ),
              ], child: child!);
            },
          );
        });
  }
}
