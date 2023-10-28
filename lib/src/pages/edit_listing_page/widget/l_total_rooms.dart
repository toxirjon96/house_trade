import 'package:house_trade/house_trade_library.dart';

class TotalRooms extends ConsumerWidget {
  const TotalRooms({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Total rooms",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ToggleButton(
                icon: Icon(
                  Icons.bedroom_baby,
                  size: 20,
                  color: ref.watch(toggleProvider)[ToggleNames.lessFour]!
                      ? Theme.of(context).colorScheme.background
                      : Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                text: ToggleNames.lessFour.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.lessFour,
                      !ref.watch(toggleProvider)[ToggleNames.lessFour]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.lessFour]!,
              ),
              const SizedBox(width: 8),
              ToggleButton(
                icon: Icon(
                  Icons.bedroom_baby,
                  size: 20,
                  color: ref.watch(toggleProvider)[ToggleNames.four]!
                      ? Theme.of(context).colorScheme.background
                      : Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                text: ToggleNames.four.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.four,
                      !ref.watch(toggleProvider)[ToggleNames.four]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.four]!,
              ),
              const SizedBox(width: 8),
              ToggleButton(
                icon: Icon(
                  Icons.bedroom_baby,
                  size: 20,
                  color: ref.watch(toggleProvider)[ToggleNames.six]!
                      ? Theme.of(context).colorScheme.background
                      : Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                text: ToggleNames.six.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.six,
                      !ref.watch(toggleProvider)[ToggleNames.six]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.six]!,
              ),
              const SizedBox(width: 8),
              ToggleButton(
                icon: Icon(
                  Icons.bedroom_baby,
                  size: 20,
                  color: ref.watch(toggleProvider)[ToggleNames.moreSix]!
                      ? Theme.of(context).colorScheme.background
                      : Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                text: ToggleNames.moreSix.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.moreSix,
                      !ref.watch(toggleProvider)[ToggleNames.moreSix]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.moreSix]!,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
