import 'package:book_app/presentation/bloc/theme/theme_cubit.dart';
import 'package:book_app/presentation/bloc/upcoming/upcoming_cubit.dart';
import 'package:book_app/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => UpcomingCubit()),
          BlocProvider(create: (context) => ThemeCubit()),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: state.themeData,
              // darkTheme: AppTheme.darkTheme,
              // themeMode: AppTheme.lightTheme,
              home: const HomeScreen(),
            );
          },
        ),
      ),
    );
  }
}
