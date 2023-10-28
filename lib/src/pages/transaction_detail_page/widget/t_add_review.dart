import 'package:house_trade/house_trade_library.dart';

class AddReview extends ConsumerStatefulWidget {
  const AddReview({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddReviewState();
}

class _AddReviewState extends ConsumerState<AddReview> {
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

  void onSubmit() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return BottomModal(
            subText: "Lorem ipsum dolor sit amet, consecrate.",
            bottom: CustomSubmitButton(
              text: "Continue Exploring",
              padding: const EdgeInsets.symmetric(
                horizontal: 80,
                vertical: 20,
              ),
              fontSize: 18,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            richTextBuilder: const RichTextBuilder(
              textList: [
                TextTypeModel(
                  textType: TextType.boldText,
                  text: "Successfully ",
                ),
                TextTypeModel(
                  textType: TextType.normalText,
                  text: "submitted your review",
                ),
              ],
            ),
            iconData: Icons.done,
            seedColor: const Color(0xFF8BC83F),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double reviewOrder = ref.watch(reviewStarProvider);
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
                title: "Add review",
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
              RichText(
                text: TextSpan(
                  text: 'Hi, how was your ',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 32,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'overall experience?',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 32,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "lorem ipsum dolor sit amet",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  for (int i = 1; i <= 5; i++)
                    IconButton(
                      onPressed: () {
                        ref
                            .read(reviewStarProvider.notifier)
                            .setStarRate(i.toDouble());
                      },
                      icon: Icon(
                        Icons.star,
                        size: 40,
                        color: (i <= reviewOrder)
                            ? const Color(0xFFF9BC39)
                            : const Color(0xFFFDE8B4),
                      ),
                    ),
                  const Spacer(),
                  Text(
                    "$reviewOrder",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 30,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.multiline,
                minLines: 5,
                maxLines: null,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                decoration: InputDecoration(
                  hintText: 'Write your experience in here (optional)',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(
                      left: 0,
                      top: 0,
                      right: 0,
                      bottom: 60,
                    ),
                    child: Icon(Icons.chat),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              imageFileList.isNotEmpty
                  ? SizedBox(
                      height: 220,
                      child: CustomScrollView(
                        slivers: [
                          SliverGrid(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 6,
                              crossAxisSpacing: 6,
                              childAspectRatio: 1 / 0.9,
                            ),
                            delegate: SliverChildBuilderDelegate(
                              childCount: imageFileList.length,
                              (ctx, index) {
                                return SelectedImages(
                                  onRemove: _removeItem,
                                  imageFile: imageFileList[index],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 15),
              IconButton(
                style: IconButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .onPrimaryContainer
                      .withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: pickImages,
                icon: Icon(
                  Icons.add,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              const Spacer(),
              CustomSubmitButton(
                text: "Submit",
                onPressed: onSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
