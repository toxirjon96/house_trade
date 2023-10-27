import 'package:house_trade/house_trade_library.dart';

class ListingType extends ConsumerWidget {
  const ListingType({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Listing type",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              ToggleButton(
                text: ToggleNames.rent.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.rent,
                      !ref.watch(toggleProvider)[ToggleNames.rent]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.rent]!,
              ),
              const SizedBox(width: 10),
              ToggleButton(
                text: ToggleNames.sell.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.sell,
                      !ref.watch(toggleProvider)[ToggleNames.sell]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.sell]!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
