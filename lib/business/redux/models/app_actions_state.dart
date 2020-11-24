class AppActionsState {
  final bool isLessThanADay;

  AppActionsState({
    this.isLessThanADay,
  });

  AppActionsState copy({
    bool isLessThanADay,
  }) {
    return AppActionsState(
      isLessThanADay: isLessThanADay ?? this.isLessThanADay,
    );
  }

  static AppActionsState initialState() => AppActionsState(
        isLessThanADay: false,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is AppActionsState && isLessThanADay == other.isLessThanADay;
  }

  @override
  int get hashCode => isLessThanADay.hashCode ^ isLessThanADay.hashCode;
}
