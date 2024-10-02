class ClockGeneric {
  int customSeconds;
  int pauseInSeconds;

  ClockGeneric({
    this.customSeconds = 0,
    this.pauseInSeconds = 120,
  });

  ClockGeneric update({int? customSeconds, int? pauseInSeconds}) {
    return ClockGeneric(customSeconds: customSeconds ?? this.customSeconds, pauseInSeconds: this.pauseInSeconds);
  }
}
