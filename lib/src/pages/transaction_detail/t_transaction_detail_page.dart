import 'package:house_trade/house_trade_library.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({
    required this.placeName,
    required this.typeHouse,
    required this.image,
    super.key,
  });

  final String placeName;
  final String typeHouse;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopAppBar(
                rightWidget: const SizedBox(width: 60, height: 60),
                title: "Transaction Detail",
                leftWidget: AppBarButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  size: 45,
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 15,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          TransactionInfo(
                            image: image,
                            transactionType: "Apartment",
                            placeName: placeName,
                            location: "Jakarta, Indonesia",
                          ),
                          const SizedBox(height: 20),
                          const DetailInfo(),
                          const SizedBox(height: 15),
                          const PaymentDetail(
                              monthPeriod: 2, price: 220, discount: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
