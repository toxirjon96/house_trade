import 'package:house_trade/house_trade_library.dart';

class ReviewStarStateNotifier extends StateNotifier<double> {
  ReviewStarStateNotifier() : super(0.0);

  void setStarRate(double order) {
    state = order;
  }
}

final reviewStarProvider = StateNotifierProvider<ReviewStarStateNotifier, double>(
  (ref) => ReviewStarStateNotifier(),
);
