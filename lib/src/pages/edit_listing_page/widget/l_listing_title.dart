import 'package:house_trade/house_trade_library.dart';

class ListingTitle extends StatelessWidget {
  const ListingTitle({
    required this.value,
    required this.title,
    required this.suffixIconData,
    this.prefixIconData,
    this.valueFontSize = 14,
    super.key,
  });

  final String value;
  final String title;
  final IconData suffixIconData;
  final IconData? prefixIconData;
  final double valueFontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          const SizedBox(height: 15),
          TextFormField(
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: valueFontSize,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
            initialValue: value,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              labelText: title,
              prefixIcon: prefixIconData == null
                  ? null
                  : Icon(
                      prefixIconData,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
              suffixIcon: Icon(
                suffixIconData,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
