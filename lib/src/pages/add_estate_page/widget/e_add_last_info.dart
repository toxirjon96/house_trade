import 'package:house_trade/house_trade_library.dart';

class AddLastInfo extends StatelessWidget {
  const AddLastInfo({super.key});

  @override
  Widget build(BuildContext context) {
    bool isError = 4 > 3;
    void onSubmit() {
      showModalBottomSheet(
          context: context,
          builder: (ctx) {
            if (!isError) {
              return BottomModal(
                subText: "Lorem ipsum dolor sit amet, consecrate.",
                bottom: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSubmitButton(
                      text: "Add More",
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.6),
                      foregroundColor:
                          Theme.of(context).colorScheme.onSecondaryContainer,
                      fontSize: 18,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 15),
                    CustomSubmitButton(
                      text: "Finish",
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      fontSize: 18,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                richTextBuilder: const RichTextBuilder(
                  textList: [
                    TextTypeModel(
                      textType: TextType.normalText,
                      text: "Your listing is now  ",
                    ),
                    TextTypeModel(
                      textType: TextType.boldText,
                      text: "published ",
                    ),
                  ],
                ),
                iconData: Icons.done,
                seedColor: const Color(0xFF8BC83F),
              );
            } else {
              return BottomModal(
                subText: "Lorem ipsum dolor sit amet, consecrate.",
                bottom: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSubmitButton(
                      text: "Close",
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.6),
                      foregroundColor:
                          Theme.of(context).colorScheme.onSecondaryContainer,
                      fontSize: 18,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 15),
                    CustomSubmitButton(
                      text: "Retry",
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      fontSize: 18,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                richTextBuilder: const RichTextBuilder(
                  textList: [
                    TextTypeModel(
                      textType: TextType.normalText,
                      text: "Aw snap, Something ",
                    ),
                    TextTypeModel(
                      textType: TextType.boldText,
                      text: "error ",
                    ),
                    TextTypeModel(
                      textType: TextType.normalText,
                      text: "happened ",
                    ),
                  ],
                ),
                iconData: Icons.warning,
                seedColor: const Color(0xFF43687E),
              );
            }
          });
    }

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
                title: "Add Listing",
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
              const SizedBox(height: 30),
              const RichTextBuilder(
                textList: [
                  TextTypeModel(
                    textType: TextType.boldText,
                    text: "Almost finish ",
                    fontSize: 28,
                  ),
                  TextTypeModel(
                    textType: TextType.normalText,
                    text: ", complete the listing",
                    fontSize: 28,
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          const SizedBox(height: 15),
                          const ListingTitle(
                            value: "",
                            title: "Sell Price",
                            prefixIconData: Icons.attach_money,
                            suffixIconData: Icons.attach_money,
                          ),
                          const SizedBox(height: 15),
                          const RentPrice(rentPrice: ""),
                          const SizedBox(height: 15),
                          const PropertyFeatures(),
                          const SizedBox(height: 15),
                          const TotalRooms(),
                          const SizedBox(height: 15),
                          const EnvironmentFacilities(),
                          const SizedBox(height: 20),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xFF97DA32),
                            spreadRadius: 20,
                            blurRadius: 40),
                        BoxShadow(
                            color: Color(0xFFA8F67B),
                            spreadRadius: 15,
                            blurRadius: 20),
                      ],
                      color: Theme.of(context).colorScheme.background,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  CustomSubmitButton(
                    text: "Finish",
                    onPressed: onSubmit,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
