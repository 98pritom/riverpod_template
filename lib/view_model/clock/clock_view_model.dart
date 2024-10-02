import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/view_model/clock/clock_generic.dart';

final clockProvider = StateNotifierProvider<ClockController, ClockGeneric>((ref) => ClockController());

class ClockController extends StateNotifier<ClockGeneric> {
  ClockController() : super(ClockGeneric());

  void startClock() {
    Future.delayed(const Duration(seconds: 1), () {
      state = state.update(customSeconds: ++state.customSeconds);
      startClock();
    },);
  }

  void pauseClock() {
    if(state.customSeconds == 120){

    }
  }
}
