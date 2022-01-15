import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  static OnboardingCubit of(context) => BlocProvider.of(context);

  late PageController pageController;
  int pagePosition = 0;
  int currentPagePosition = 0;

  void onBoardingController() {
    pageController = PageController(initialPage: 0, viewportFraction: 1);
  }

  void IndicatorPosition(int position) {
    pagePosition = position;
    emit(OnboardingIndicatoState());
  }
}
