import 'package:house_trade/house_trade_library.dart';

class EnvironmentFacilities extends ConsumerWidget {
  const EnvironmentFacilities({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Environment / Facilities",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              ToggleButton(
                text: ToggleNames.parkingLot.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.parkingLot,
                      !ref.watch(toggleProvider)[ToggleNames.parkingLot]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.parkingLot]!,
              ),
              const SizedBox(width: 10),
              ToggleButton(
                text: ToggleNames.petAllowed.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.petAllowed,
                      !ref.watch(toggleProvider)[ToggleNames.petAllowed]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.petAllowed]!,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              ToggleButton(
                text: ToggleNames.garden.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.garden,
                      !ref.watch(toggleProvider)[ToggleNames.garden]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.garden]!,
              ),
              const SizedBox(width: 10),
              ToggleButton(
                text: ToggleNames.gym.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.gym,
                      !ref.watch(toggleProvider)[ToggleNames.gym]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.gym]!,
              ),
              const SizedBox(width: 10),
              ToggleButton(
                text: ToggleNames.park.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.park,
                      !ref.watch(toggleProvider)[ToggleNames.park]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.park]!,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              ToggleButton(
                text: ToggleNames.homeTheatre.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.homeTheatre,
                      !ref.watch(toggleProvider)[ToggleNames.homeTheatre]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.homeTheatre]!,
              ),
              const SizedBox(width: 10),
              ToggleButton(
                text: ToggleNames.kidsFriendly.name,
                onPressed: () {
                  ref.read(toggleProvider.notifier).setToggleState(
                      ToggleNames.kidsFriendly,
                      !ref.watch(toggleProvider)[ToggleNames.kidsFriendly]!);
                },
                isActive: ref.watch(toggleProvider)[ToggleNames.kidsFriendly]!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
