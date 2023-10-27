import 'package:flutter/cupertino.dart';
import 'package:house_trade/house_trade_library.dart';

class TransactionInfo extends StatelessWidget {
  const TransactionInfo({
    required this.image,
    required this.transactionType,
    required this.placeName,
    required this.location,
    super.key,
  });

  final ImageProvider<Object> image;
  final String transactionType;
  final String placeName;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
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
              type: transactionType,
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
                      Icons.location_on,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      size: 15,
                    ),
                    title: location,
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 20,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Rent",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontSize: 16,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer,
                            ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
