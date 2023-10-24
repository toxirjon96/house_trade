import 'package:flutter/cupertino.dart';
import 'package:house_trade/house_trade_library.dart';

class Listings extends StatelessWidget {
  const Listings({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            Row(
              children: [
                HouseInfoItem(
                  image: const AssetImage("assets/images/li-image-1.png"),
                  rightIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.heart),
                  ),
                  leftIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                  title: "Fairview Apartment",
                  imageInfo: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$ 370/",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
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
                      SubItem(
                        icon: Icon(
                          Icons.star,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 15,
                        ),
                        title: "4.9",
                      ),
                      SubItem(
                        icon: Icon(
                          Icons.location_on,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 15,
                        ),
                        title: "Jakarta, Indonesia",
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                HouseInfoItem(
                  image: const AssetImage("assets/images/li-image-2.png"),
                  rightIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.heart),
                  ),
                  leftIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                  imageInfo: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$ 370/",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
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
                  title: "Fairview Apartment",
                  bottom: Row(
                    children: [
                      SubItem(
                        icon: Icon(
                          Icons.star,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 15,
                        ),
                        title: "4.9",
                      ),
                      SubItem(
                        icon: Icon(
                          Icons.location_on,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 15,
                        ),
                        title: "Jakarta, Indonesia",
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
                  image: const AssetImage("assets/images/li-image-3.png"),
                  rightIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.heart),
                  ),
                  leftIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      size: 15,
                    ),
                  ),
                  title: "Fairview Apartment",
                  imageInfo: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$ 370/",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
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
                      SubItem(
                        icon: Icon(
                          Icons.star,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 15,
                        ),
                        title: "4.9",
                      ),
                      SubItem(
                        icon: Icon(
                          Icons.location_on,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 15,
                        ),
                        title: "Jakarta, Indonesia",
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5),
                HouseInfoItem(
                  image: const AssetImage("assets/images/li-image-4.png"),
                  rightIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.heart),
                  ),
                  leftIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                  ),
                  title: "Fairview Apartment",
                  imageInfo: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$ 370/",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
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
                      SubItem(
                        icon: Icon(
                          Icons.star,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 15,
                        ),
                        title: "4.9",
                      ),
                      SubItem(
                        icon: Icon(
                          Icons.location_on,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          size: 15,
                        ),
                        title: "Jakarta, Indonesia",
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

class SubItem extends StatelessWidget {
  const SubItem({
    required this.title,
    required this.icon,
    super.key,
  });

  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 2),
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                overflow: TextOverflow.ellipsis,
              ),
        )
      ],
    );
  }
}