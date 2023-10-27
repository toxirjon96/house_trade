import 'package:house_trade/house_trade_library.dart';

class RowInfo extends StatelessWidget {
  const RowInfo({
    required this.leftText,
    required this.rightText,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w200,
    super.key,
  });

  final String leftText;
  final String rightText;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          Text(
            rightText,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
        ],
      ),
    );
  }
}
