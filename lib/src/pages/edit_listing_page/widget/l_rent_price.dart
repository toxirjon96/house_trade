import 'package:house_trade/house_trade_library.dart';

class RentPrice extends ConsumerWidget {
  const RentPrice({
    required this.rentPrice,
    super.key,
  });

  final String rentPrice;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String last = "";
    if (ref.watch(toggleProvider)[ToggleNames.monthly]!){
      last = " /month";
    }else if (ref.watch(toggleProvider)[ToggleNames.yearly]!){
      last = " /year";
    }
    return Column(
      children: [
        ListingTitle(
          value: "$rentPrice$last",
          title: "Rent Price",
          prefixIconData: Icons.attach_money,
          suffixIconData: Icons.attach_money,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            ToggleButton(
              text: ToggleNames.monthly.name,
              onPressed: () {
                ref.read(toggleProvider.notifier).setToggleState(
                    ToggleNames.monthly,
                    !ref.watch(toggleProvider)[ToggleNames.monthly]!);
              },
              isActive: ref.watch(toggleProvider)[ToggleNames.monthly]!,
            ),
            const SizedBox(width: 10),
            ToggleButton(
              text: ToggleNames.yearly.name,
              onPressed: () {
                ref.read(toggleProvider.notifier).setToggleState(
                    ToggleNames.yearly,
                    !ref.watch(toggleProvider)[ToggleNames.yearly]!);
              },
              isActive: ref.watch(toggleProvider)[ToggleNames.yearly]!,
            ),
          ],
        ),
      ],
    );
  }
}
