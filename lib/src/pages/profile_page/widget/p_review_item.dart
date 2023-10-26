import 'package:house_trade/house_trade_library.dart';

class ReviewItem extends ConsumerWidget {
  const ReviewItem({
    super.key,
    required this.houseImage,
    required this.type,
    required this.starMark,
    required this.location,
    required this.userImage,
    required this.fullName,
    required this.post,
    required this.time,
  });

  final ImageProvider<Object> houseImage;
  final String type;
  final String starMark;
  final String location;
  final ImageProvider<Object> userImage;
  final String fullName;
  final String post;
  final String time;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String activeAction = ref.watch(starProvider);
    int count = switch (activeAction) {
      "all" => 5,
      "1" => 1,
      "2" => 2,
      "3" => 3,
      "4" => 4,
      _ => 0,
    };

    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: houseImage,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            type,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              HouseInfoSubItem(
                                icon: Icon(
                                  Icons.star,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                  size: 15,
                                ),
                                title: starMark,
                                fontSize: 16,
                              ),
                              const SizedBox(width: 10),
                              HouseInfoSubItem(
                                icon: Icon(
                                  Icons.location_on,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                  size: 15,
                                ),
                                title: location,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CircleAvatar(
                      radius: 40, // Image radius
                      backgroundImage: userImage,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                fullName,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      fontSize: 16,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                              ),
                              const Spacer(),
                              for (int i = 1; i <= count; i++)
                                Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer,
                                ),
                            ],
                          ),
                          Text(
                            post,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontSize: 14,
                                  overflow: TextOverflow.ellipsis,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer
                                      .withOpacity(0.8),
                                ),
                            maxLines: 3,
                          ),
                          Text(
                            time,
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  fontSize: 16,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondaryContainer
                                      .withOpacity(0.8),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
