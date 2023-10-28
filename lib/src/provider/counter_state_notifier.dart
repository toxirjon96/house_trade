import 'package:house_trade/house_trade_library.dart';

enum CounterNames {
  bedroom("Bedroom", 4),
  bathroom("Bathroom", 4),
  balcony("Balcony", 4);

  final String name;
  final int maxValues;

  const CounterNames(this.name, this.maxValues);
}

class CounterStateNotifier extends StateNotifier<Map<CounterNames, int>> {
  CounterStateNotifier()
      : super({
          CounterNames.bedroom: 2,
          CounterNames.bathroom: 2,
          CounterNames.balcony: 1,
        });

  void incrementValue(CounterNames name) {
    if (state[name]! < name.maxValues) {
      state = {...state, name: state[name]! + 1};
    }
  }

  void decrementValue(CounterNames name) {
    if (state[name]! > 0) {
      state = {...state, name: state[name]! - 1};
    }
  }

  bool isDisabled(CounterNames name, String type) {
    if (type == 'dec') {
      return state[name] == 0;
    } else if (type == 'inc') {
      return state[name] == name.maxValues;
    }
    return false;
  }
}

final counterProvider =
    StateNotifierProvider<CounterStateNotifier, Map<CounterNames, int>>(
  (ref) => CounterStateNotifier(),
);
