import 'package:house_trade/house_trade_library.dart';

class ProfileStateNotifier extends StateNotifier<String> {
  ProfileStateNotifier() : super('transaction');

  void setActiveAction(String activeAction) {
    state = activeAction;
  }
}

final profileProvider = StateNotifierProvider<ProfileStateNotifier, String>(
  (ref) => ProfileStateNotifier(),
);
