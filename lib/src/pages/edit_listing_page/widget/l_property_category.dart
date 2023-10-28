import 'package:house_trade/house_trade_library.dart';

class PropertyCategory extends ConsumerWidget {
  const PropertyCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Property Category",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              ToggleButton(
                text: ToggleNames.house.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.house,
                      !ref.watch(toggleProvider)[ToggleNames.house]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.house]!,
              ),
              const SizedBox(width: 10),
              ToggleButton(
                text: ToggleNames.apartment.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.apartment,
                      !ref.watch(toggleProvider)[ToggleNames.apartment]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.apartment]!,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              ToggleButton(
                text: ToggleNames.hotel.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.hotel,
                      !ref.watch(toggleProvider)[ToggleNames.hotel]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.hotel]!,
              ),
              const SizedBox(width: 10),
              ToggleButton(
                text: ToggleNames.villa.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.villa,
                      !ref.watch(toggleProvider)[ToggleNames.villa]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.villa]!,
              ),
              const SizedBox(width: 10),
              ToggleButton(
                text: ToggleNames.cottage.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.cottage,
                      !ref.watch(toggleProvider)[ToggleNames.cottage]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.cottage]!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
