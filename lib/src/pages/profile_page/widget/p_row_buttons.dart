import 'package:house_trade/house_trade_library.dart';

class RowButtons extends ConsumerWidget {
  const RowButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextButton(
              text: "Transaction",
              onPressed: () {
                ref
                    .read(profileProvider.notifier)
                    .setActiveAction("transaction");
              },
              isActive: ref.watch(profileProvider) == 'transaction',
            ),
            CustomTextButton(
              text: "Listings",
              onPressed: () {
                ref
                    .read(profileProvider.notifier)
                    .setActiveAction("listings");
              },
              isActive: ref.watch(profileProvider) == 'listings',
            ),
            CustomTextButton(
              text: "Sold",
              onPressed: () {
                ref
                    .read(profileProvider.notifier)
                    .setActiveAction("sold");
              },
              isActive: ref.watch(profileProvider) == 'sold',
            ),
          ],
        ),
      ),
    );
  }
}
