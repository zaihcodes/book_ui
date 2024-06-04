import 'package:bloc/bloc.dart';
import 'package:book_app/core/app_theme.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeData: AppTheme.lightTheme));

  void toggleTheme() {
    if (state.themeData == AppTheme.lightTheme) {
      emit(ThemeState(themeData: AppTheme.darkTheme));
    } else {
      emit(ThemeState(themeData: AppTheme.lightTheme));
    }
  }
}
