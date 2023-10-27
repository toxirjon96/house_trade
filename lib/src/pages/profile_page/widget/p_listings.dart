import 'package:flutter/cupertino.dart';
import 'package:house_trade/house_trade_library.dart';

class Listings extends StatelessWidget {
  const Listings({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      sliver: SliverGrid(
        delegate: SliverChildListDelegate(
          [
            HouseInfoItem(
              onTap: () {},
              image: const AssetImage("assets/images/li-image-1.png"),
              rightIcon: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.heart),
              ),
              leftIcon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const EditListingPage(
                        placeName: "Fairview Apartment",
                        image: AssetImage("assets/images/li-image-1.png"),
                        price: "370",
                        rate: "4.9",
                        location: "Jakarta, Indonesia",
                      ),
                    ),
                  );
                },
                icon: Icon(
                  Icons.edit,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),
              title: "Fairview Apartment",
              imageInfo: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$ 370/",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                  ),
                  Text(
                    "month",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Theme.of(context).colorScheme.background,
                        ),
                  ),
                ],
              ),
              bottom: Row(
                children: [
                  HouseInfoSubItem(
                    icon: Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      size: 15,
                    ),
                    title: "4.9",
                  ),
                  HouseInfoSubItem(
                    icon: Icon(
                      Icons.location_on,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      size: 15,
                    ),
                    title: "Jakarta, Indonesia",
                  ),
                ],
              ),
            ),
          ],
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          childAspectRatio: 1 / 1.5,
        ),
      ),
    );
  }
}
