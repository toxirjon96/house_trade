import 'package:house_trade/house_trade_library.dart';

class PaymentDetail extends StatelessWidget {
  const PaymentDetail({
    required this.monthPeriod,
    required this.price,
    required this.discount,
    super.key,
  });

  final int monthPeriod;
  final double price;
  final double discount;

  @override
  Widget build(BuildContext context) {
    final discountPrice = (monthPeriod * price * discount) / 100;
    final totalPrice =
        monthPeriod * price - ((monthPeriod * price * discount) / 100);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Payment Detail",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
        const SizedBox(height: 15),
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  child: Column(
                    children: [
                      RowInfo(
                        leftText: "Period time",
                        rightText: "$monthPeriod month",
                      ),
                      RowInfo(
                        leftText: "Monthly payment ",
                        rightText: "\$ $price",
                      ),
                      RowInfo(
                        leftText: "Discount",
                        rightText: "-\$ $discountPrice",
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(0.4),
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                  ),
                  child: RowInfo(
                    leftText: "Total",
                    rightText: "\$ $totalPrice",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
