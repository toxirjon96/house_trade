import 'package:flutter/cupertino.dart';
import 'package:house_trade/house_trade_library.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            Row(
              children: [
                HouseInfoItem(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const TransactionDetail(
                          placeName: "Wings Tower",
                          typeHouse: "rent",
                          image: AssetImage("assets/images/tr-image-1.png"),
                        ),
                      ),
                    );
                  },
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
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const TransactionDetail(
                          placeName: "Bridgeland Modern House",
                          typeHouse: "rent",
                          image: AssetImage("assets/images/tr-image-2.png"),
                        ),
                      ),
                    );
                  },
                  image: const AssetImage("assets/images/tr-image-2.png"),
                  rightIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.heart),
                  ),
                  title: "Bridgeland Modern House",
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
                        title: "October 26, 2023",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
