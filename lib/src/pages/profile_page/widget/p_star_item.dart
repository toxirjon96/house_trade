import 'package:house_trade/house_trade_library.dart';

class StarItem extends StatelessWidget {
  const StarItem({
    required this.title,
    required this.onTap,
    this.isActive = false,
    super.key,
  });

  final String title;
  final bool isActive;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final bColor = isActive
        ? Theme.of(context).colorScheme.onSecondaryContainer
        : Theme.of(context).colorScheme.primaryContainer;
    final tColor = isActive
        ? Theme.of(context).colorScheme.background
        : Theme.of(context).colorScheme.onSecondaryContainer;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 4),
        child: Container(
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: bColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Color(0xFFEAD44A),
              ),
              const SizedBox(width: 5),
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: tColor,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
