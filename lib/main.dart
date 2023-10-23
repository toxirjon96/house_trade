import 'package:house_trade/house_trade_library.dart';

void main() {
  runApp(
    const ProviderScope(child: HouseTrade()),
  );
}

class HouseTrade extends StatelessWidget {
  const HouseTrade({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "House Trade",
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      home: const ProfilePage(),
    );
  }
}
