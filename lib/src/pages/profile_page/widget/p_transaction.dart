import 'package:flutter/cupertino.dart';
import 'package:house_trade/house_trade_library.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            Row(
              children: [
                HouseInfoItem(
                  image: const AssetImage("assets/images/tr-image-1.png"),
                  rightIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.heart),
                  ),
                  title: "Wings Tower",
                  imageInfo: Text(
                    "Rent",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                  ),
                  bottom: const Row(
                    children: [
                      HouseInfoSubItem(
                        icon: Icon(
                          Icons.watch_later,
                          color: Colors.lightGreen,
                          size: 15,
                        ),
                        title: "October 24, 2023",
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                HouseInfoItem(
                  image: const AssetImage("assets/images/tr-image-2.png"),
                  rightIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.heart),
                  ),
                  title: "Wings Tower",
                  imageInfo: Text(
                    "Rent",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                  ),
                  bottom: const Row(
                    children: [
                      HouseInfoSubItem(
                        icon: Icon(
                          Icons.watch_later,
                          color: Colors.lightGreen,
                          size: 15,
                        ),
                        title: "October 24, 2023",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                HouseInfoItem(
                  image: const AssetImage("assets/images/tr-image-1.png"),
                  rightIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.heart),
                  ),
                  title: "Wings Tower",
                  imageInfo: Text(
                    "Rent",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                  ),
                  bottom: const Row(
                    children: [
                      HouseInfoSubItem(
                        icon: Icon(
                          Icons.watch_later,
                          color: Colors.lightGreen,
                          size: 15,
                        ),
                        title: "October 24, 2023",
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                HouseInfoItem(
                  image: const AssetImage("assets/images/tr-image-2.png"),
                  rightIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.heart),
                  ),
                  title: "Wings Tower",
                  imageInfo: Text(
                    "Rent",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                  ),
                  bottom: const Row(
                    children: [
                      HouseInfoSubItem(
                        icon: Icon(
                          Icons.watch_later,
                          color: Colors.lightGreen,
                          size: 15,
                        ),
                        title: "October 24, 2023",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
