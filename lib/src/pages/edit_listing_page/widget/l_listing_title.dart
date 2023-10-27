import 'package:house_trade/house_trade_library.dart';

class ListingTitle extends StatelessWidget {
  const ListingTitle({
    required this.placeName,
    super.key,
  });

  final String placeName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Listing title",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
            initialValue: placeName,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              labelText: 'Listing title',
              suffixIcon: Icon(
                Icons.home_filled,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
