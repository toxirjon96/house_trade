import 'package:house_trade/house_trade_library.dart';
import 'package:house_trade/src/pages/add_estate_page/widget/e_add_images.dart';

class AddLocation extends StatelessWidget {
  const AddLocation({super.key});

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
                      text: "Where is the ",
                      fontSize: 28),
                  TextTypeModel(
                      textType: TextType.boldText,
                      text: "location",
                      fontSize: 28),
                ],
              ),
              const SizedBox(height: 15),
              const LocationInfo(
                topFlex: 5,
                containerHeight: 500,
                fontSize: 18,
              ),
              const Spacer(),
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
                    text: "Next",
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const AddImages(),
                        ),
                      );
                    },
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
