import 'package:house_trade/house_trade_library.dart';

class CustomSliverAppBar extends ConsumerWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    String activeAction = ref.watch(profileProvider);
    int count = 0;
    if (activeAction == 'transaction' || activeAction == 'listings') count = 4;
    return SliverAppBar(
      pinned: true,
      floating: true,
      stretch: false,
      snap: false,
      expandedHeight: 110,
      backgroundColor: Theme.of(context).colorScheme.background,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            width: width - 60,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextButton(
                      text: "Transaction",
                      onPressed: () {
                        ref
                            .read(profileProvider.notifier)
                            .setActiveAction("transaction");
                      },
                      isActive: activeAction == 'transaction',
                    ),
                    CustomTextButton(
                      text: "Listings",
                      onPressed: () {
                        ref
                            .read(profileProvider.notifier)
                            .setActiveAction("listings");
                      },
                      isActive: activeAction == 'listings',
                    ),
                    CustomTextButton(
                      text: "Sold",
                      onPressed: () {
                        ref
                            .read(profileProvider.notifier)
                            .setActiveAction("sold");
                      },
                      isActive: activeAction == 'sold',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
      flexibleSpace: Container(
        height: 110,
        alignment: Alignment.bottomCenter,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$count $activeAction",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
            ),
            CustomMenuButton(onTap: () {})
          ],
        ),
      ),
    );
  }
}
