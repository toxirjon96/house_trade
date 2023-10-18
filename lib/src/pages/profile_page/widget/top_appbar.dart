import 'package:house_trade/house_trade_library.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({
    required this.leftWidget,
    required this.title,
    required this.rightWidget,
    super.key,
  });

  final Widget leftWidget;
  final String title;
  final Widget rightWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leftWidget,
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          rightWidget,
        ],
      ),
    );
  }
}
