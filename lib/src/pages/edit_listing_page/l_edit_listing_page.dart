import 'package:house_trade/house_trade_library.dart';
import 'package:house_trade/src/pages/edit_listing_page/widget/l_listing_type.dart';

class EditListingPage extends StatefulWidget {
  const EditListingPage({
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
  State<StatefulWidget> createState() => _EditListingPageState();
}

class _EditListingPageState extends State<EditListingPage> {
  bool rent = true;
  bool sell = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopAppBar(
                rightWidget: const SizedBox(width: 60, height: 60),
                title: "Edit Listing",
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
                          ListingInfo(
                            placeName: widget.placeName,
                            image: widget.image,
                            price: widget.price,
                            rate: widget.rate,
                            location: widget.location,
                          ),
                          const SizedBox(height: 15),
                          ListingTitle(placeName: widget.placeName),
                          const SizedBox(height: 15),
                          const ListingType(),
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
