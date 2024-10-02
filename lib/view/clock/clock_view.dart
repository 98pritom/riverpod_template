import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_project/view_model/clock/clock_view_model.dart';

class ClockView extends ConsumerStatefulWidget {
  const ClockView({super.key});

  @override
  ConsumerState<ClockView> createState() => _ClockViewState();
}

class _ClockViewState extends ConsumerState<ClockView> {
  @override
  Widget build(BuildContext context) {
    final clockController = ref.watch(clockProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              clockController.customSeconds.toString(),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(clockProvider.notifier).startClock();
              },
              child: const Text('Start'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(clockProvider.notifier).startClock();
              },
              child: const Text('Start'),
            ),
          ],
        ),
      ),
    );
  }
}
