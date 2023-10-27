import 'package:flutter/cupertino.dart';
import 'package:house_trade/house_trade_library.dart';

class ListingInfo extends StatelessWidget {
  const ListingInfo({
    required this.placeName,
    required this.image,
    required this.price,
    required this.rate,
    required this.location,
    super.key,
  });

  final String placeName;
  final ImageProvider<Object> image;
  final String price;
  final String rate;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.4),
        border: Border.all(
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: DetailItem(
              image: image,
              topLeftIcon: const Icon(
                CupertinoIcons.heart,
                color: Colors.red,
              ),
              type: "House",
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    placeName,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  ),
                  const SizedBox(height: 5),
                  HouseInfoSubItem(
                    fontSize: 15,
                    icon: Icon(
                      Icons.star,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      size: 15,
                    ),
                    title: rate,
                  ),
                  const SizedBox(height: 5),
                  HouseInfoSubItem(
                    fontSize: 15,
                    icon: Icon(
                      Icons.location_on,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      size: 15,
                    ),
                    title: location,
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
