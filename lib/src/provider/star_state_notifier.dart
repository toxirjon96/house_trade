import 'package:house_trade/house_trade_library.dart';

class StartStateNotifier extends StateNotifier<String> {
  StartStateNotifier() : super('all');

  void setStarOrder(String order) => state = order;
}

final starProvider = StateNotifierProvider<StartStateNotifier, String>(
  (ref) => StartStateNotifier(),
);
