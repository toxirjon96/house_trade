import 'package:house_trade/house_trade_library.dart';

class HouseInfoSubItem extends StatelessWidget {
  const HouseInfoSubItem({
    required this.title,
    required this.icon,
    this.fontSize = 12,
    super.key,
  });

  final Icon icon;
  final String title;
  final double fontSize;

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
                fontSize: fontSize,
              ),
        )
      ],
    );
  }
}
