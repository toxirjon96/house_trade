import 'package:house_trade/house_trade_library.dart';

class AddReview extends ConsumerStatefulWidget {
  const AddReview({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddReviewState();
}

class _AddReviewState extends ConsumerState<AddReview> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile> imageFileList = [];

  void pickImages() async {
    final List<XFile> selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages.isNotEmpty) {
      imageFileList.addAll(selectedImages);
    }
    for (int i = 0; i < imageFileList.length; i++){

    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double reviewOrder = ref.watch(reviewStarProvider);
    return Scaffold(
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
                        fontSize: 36,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'overall experience?',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 36,
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
              imageFileList.isNotEmpty
                  ? Expanded(
                      child: CustomScrollView(
                        slivers: [
                          SliverGrid(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                    childAspectRatio: 1 / 1.4),
                            delegate: SliverChildBuilderDelegate(
                                childCount: imageFileList.length, (ctx, index) {
                              Text(imageFileList[index].name);
                            }),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(),
              const Spacer(),
              CustomSubmitButton(
                text: "Submit",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
