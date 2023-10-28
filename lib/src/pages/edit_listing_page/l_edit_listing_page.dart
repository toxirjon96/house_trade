import 'package:flutter/cupertino.dart';
import 'package:house_trade/house_trade_library.dart';
import 'package:house_trade/src/pages/edit_listing_page/widget/l_property_features.dart';

class EditListingPage extends ConsumerStatefulWidget {
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
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditListingPageState();
}

class _EditListingPageState extends ConsumerState<EditListingPage> {
  final ImagePicker imagePicker = ImagePicker();
  final List<XFile> imageFileList = [];

  void pickImages() async {
    final List<XFile> selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      imageFileList.addAll(selectedImages);
    }
    setState(() {});
  }

  void _removeItem(XFile item) {
    setState(() {
      imageFileList.remove(item);
    });
  }

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
              ListingInfo(
                placeName: widget.placeName,
                image: widget.image,
                price: widget.price,
                rate: widget.rate,
                location: widget.location,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          const SizedBox(height: 15),
                          ListingTitle(
                            value: widget.placeName,
                            title: "Listing title",
                            suffixIconData: Icons.home_filled,
                          ),
                          const SizedBox(height: 15),
                          const ListingType(),
                          const SizedBox(height: 15),
                          const PropertyCategory(),
                          const SizedBox(height: 15),
                          const LocationInfo(),
                          const SizedBox(height: 10),
                          Text(
                            "Listing photos",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer,
                                ),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                    CustomImagePicker(
                      imageFileList: imageFileList,
                      onRemove: _removeItem,
                      pickImages: pickImages,
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          const SizedBox(height: 15),
                          const ListingTitle(
                            value: "150 000",
                            title: "Sell Price",
                            prefixIconData: Icons.attach_money,
                            suffixIconData: Icons.attach_money,
                          ),
                          const SizedBox(height: 15),
                          RentPrice(rentPrice: widget.price),
                          const SizedBox(height: 15),
                          const PropertyFeatures(),
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
