import 'package:house_trade/house_trade_library.dart';

class RowButtons extends ConsumerWidget {
  const RowButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String activeAction = ref.watch(profileProvider);
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          backgroundColor: Theme.of(context).colorScheme.background,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
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
        ),
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[100],
                child: const Text("He'd have you all unravel at the"),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[200],
                child: const Text('Heed not the rabble'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[300],
                child: const Text('Sound of screams but the'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[400],
                child: const Text('Who scream'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[500],
                child: const Text('Revolution is coming...'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.green[600],
                child: const Text('Revolution, they...'),
              ),
            ],
          ),
        ),
      ],
    );
    //
    //
    //   Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     padding: const EdgeInsets.symmetric(horizontal: 30),
    //     width: double.infinity,
    //     height: 70,
    //     decoration: BoxDecoration(
    //       color: Theme.of(context).colorScheme.secondaryContainer,
    //       borderRadius: BorderRadius.circular(40),
    //     ),
    //     child: Column(
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             CustomTextButton(
    //               text: "Transaction",
    //               onPressed: () {
    //                 ref
    //                     .read(profileProvider.notifier)
    //                     .setActiveAction("transaction");
    //               },
    //               isActive: activeAction == 'transaction',
    //             ),
    //             CustomTextButton(
    //               text: "Listings",
    //               onPressed: () {
    //                 ref
    //                     .read(profileProvider.notifier)
    //                     .setActiveAction("listings");
    //               },
    //               isActive: activeAction == 'listings',
    //             ),
    //             CustomTextButton(
    //               text: "Sold",
    //               onPressed: () {
    //                 ref.read(profileProvider.notifier).setActiveAction("sold");
    //               },
    //               isActive: activeAction == 'sold',
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
