import 'package:house_trade/house_trade_library.dart';

class ToggleButton extends StatelessWidget {
  const ToggleButton({
    required this.text,
    required this.onPressed,
    required this.isActive,
    super.key,
  });

  final String text;
  final void Function() onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        backgroundColor: isActive
            ? Theme.of(context).colorScheme.onSecondaryContainer
            : Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              fontSize: 16,
              color: isActive
                  ? Theme.of(context).colorScheme.background
                  : Theme.of(context).colorScheme.onSecondaryContainer,
            ),
      ),
    );
  }
}
