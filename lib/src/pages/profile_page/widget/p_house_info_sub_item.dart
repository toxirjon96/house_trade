import 'package:house_trade/house_trade_library.dart';

class HouseInfoSubItem extends StatelessWidget {
  const HouseInfoSubItem({
    required this.title,
    required this.icon,
    super.key,
  });

  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 5),
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        )
      ],
    );
  }
}
