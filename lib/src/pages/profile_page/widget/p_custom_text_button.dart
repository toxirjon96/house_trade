import 'package:house_trade/house_trade_library.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.text,
    required this.onPressed,
    this.isActive = false,
    super.key,
  });

  final String text;
  final void Function() onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: isActive
          ? TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              backgroundColor: Theme.of(context).colorScheme.background,
              side: BorderSide(
                color: Theme.of(context).colorScheme.background,
              ),
            )
          : null,
      onPressed: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Theme.of(context)
                  .colorScheme
                  .onPrimaryContainer
                  .withOpacity(isActive ? 1 : 0.6),
            ),
      ),
    );
  }
}
