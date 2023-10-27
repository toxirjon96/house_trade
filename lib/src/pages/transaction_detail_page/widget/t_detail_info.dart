import 'package:house_trade/house_trade_library.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Transaction Detail",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
        const SizedBox(height: 15),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RowInfo(leftText: "Check in", rightText: "11/28/2021"),
              RowInfo(leftText: "Check out", rightText: "01/28/2022"),
              RowInfo(leftText: "Owner name", rightText: "Anderson"),
              RowInfo(leftText: "Transaction type", rightText: "Rent"),
            ],
          ),
        ),
      ],
    );
  }
}
