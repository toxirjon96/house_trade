import 'package:house_trade/house_trade_library.dart';

class AddEstatePage extends StatelessWidget {
  const AddEstatePage({super.key});

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
                      textType: TextType.normalText,
                      text: "Hi Josh, Fill detail of your real ",
                      fontSize: 28),
                  TextTypeModel(
                      textType: TextType.boldText,
                      text: "estate",
                      fontSize: 28),
                ],
              ),
              const SizedBox(height: 15),
              const ListingTitle(
                value: "",
                title: "Listing title",
                suffixIconData: Icons.home_filled,
              ),
              const SizedBox(height: 20),
              const ListingType(),
              const SizedBox(height: 30),
              const PropertyCategory(),
              const Spacer(),
              CustomSubmitButton(
                text: "Next",
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => const AddLocation(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
