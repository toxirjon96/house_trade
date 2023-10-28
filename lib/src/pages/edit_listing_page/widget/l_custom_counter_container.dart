import 'package:flutter/cupertino.dart';
import 'package:house_trade/house_trade_library.dart';

class CustomCounterContainer extends ConsumerWidget {
  const CustomCounterContainer({
    required this.name,
    super.key,
  });

  final CounterNames name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name.name,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: ref
                        .read(counterProvider.notifier)
                        .isDisabled(name, 'inc')
                    ? null
                    : () {
                        ref.read(counterProvider.notifier).incrementValue(name);
                      },
                style: IconButton.styleFrom(
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .onPrimaryContainer
                      .withOpacity(0.4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                icon: Icon(
                  Icons.add,
                  size: 20,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "${ref.watch(counterProvider)[name]}",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: ref
                        .read(counterProvider.notifier)
                        .isDisabled(name, 'dec')
                    ? null
                    : () {
                        ref.read(counterProvider.notifier).decrementValue(name);
                      },
                style: IconButton.styleFrom(
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .onPrimaryContainer
                      .withOpacity(0.4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                icon: Icon(
                  CupertinoIcons.minus,
                  size: 20,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
