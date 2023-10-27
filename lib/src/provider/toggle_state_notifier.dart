import 'package:house_trade/house_trade_library.dart';

enum ToggleNames {
  rent("Rent"),
  sell("Sell");

  final String name;

  const ToggleNames(this.name);
}

class ToggleStateNotifier extends StateNotifier<Map<ToggleNames, bool>> {
  ToggleStateNotifier()
      : super({
          ToggleNames.rent: false,
          ToggleNames.sell: false,
        });

  void setToggleState(ToggleNames name, bool status) {
    state = {...state, name: status};
  }
}

final toggleProvider =
    StateNotifierProvider<ToggleStateNotifier, Map<ToggleNames, bool>>(
  (ref) => ToggleStateNotifier(),
);
