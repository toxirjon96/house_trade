import 'package:house_trade/house_trade_library.dart';

enum ToggleNames {
  rent("Rent"),
  sell("Sell"),
  house("House"),
  apartment("Apartment"),
  hotel("Hotel"),
  villa("Villa"),
  cottage("Cottage"),
  monthly("Monthly"),
  yearly("Yearly"),
  lessFour("< 4"),
  four("4"),
  six("6"),
  moreSix(">6");

  final String name;

  const ToggleNames(this.name);
}

class ToggleStateNotifier extends StateNotifier<Map<ToggleNames, bool>> {
  ToggleStateNotifier()
      : super({
          ToggleNames.rent: true,
          ToggleNames.sell: true,
          ToggleNames.house: true,
          ToggleNames.apartment: false,
          ToggleNames.hotel: false,
          ToggleNames.villa: false,
          ToggleNames.cottage: false,
          ToggleNames.monthly: true,
          ToggleNames.yearly: false,
          ToggleNames.lessFour: false,
          ToggleNames.four: false,
          ToggleNames.six: false,
          ToggleNames.moreSix: false,
        });

  void setToggleState(ToggleNames name, bool status) {
    if (name == ToggleNames.house ||
        name == ToggleNames.apartment ||
        name == ToggleNames.hotel ||
        name == ToggleNames.villa ||
        name == ToggleNames.cottage) {
      state = {
        ...state,
        ToggleNames.house: false,
        ToggleNames.apartment: false,
        ToggleNames.hotel: false,
        ToggleNames.villa: false,
        ToggleNames.cottage: false,
      };
    }

    if (name == ToggleNames.lessFour ||
        name == ToggleNames.four ||
        name == ToggleNames.six ||
        name == ToggleNames.moreSix) {
      state = {
        ...state,
        ToggleNames.lessFour: false,
        ToggleNames.four: false,
        ToggleNames.six: false,
        ToggleNames.moreSix: false,
      };
    }

    if (name == ToggleNames.monthly || name == ToggleNames.yearly) {
      state = {
        ...state,
        ToggleNames.monthly: false,
        ToggleNames.yearly: false,
      };
    }

    state = {...state, name: status};
  }
}

final toggleProvider =
    StateNotifierProvider<ToggleStateNotifier, Map<ToggleNames, bool>>(
  (ref) => ToggleStateNotifier(),
);
