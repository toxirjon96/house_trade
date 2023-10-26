import 'package:house_trade/house_trade_library.dart';

class AllReviews extends ConsumerWidget {
  const AllReviews({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String activeStar = ref.watch(starProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              TopAppBar(
                rightWidget: const SizedBox(width: 60, height: 60),
                title: "All reviews",
                leftWidget: AppBarButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  size: 45,
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 15,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const ReviewOwner(
                userImage: AssetImage("assets/images/user-2.png"),
                name: "Mandella",
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    StarItem(
                      title: "All",
                      isActive: activeStar == 'all',
                      onTap: () {
                        ref.read(starProvider.notifier).setStarOrder("all");
                      },
                    ),
                    for (int i = 1; i < 5; i++)
                      StarItem(
                        title: "$i",
                        isActive: activeStar == '$i',
                        onTap: () {
                          ref.read(starProvider.notifier).setStarOrder("$i");
                        },
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "User reviews",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                ),
              ),
              const SizedBox(height: 10),
              const ReviewSliver(),
            ],
          ),
        ),
      ),
    );
  }
}
