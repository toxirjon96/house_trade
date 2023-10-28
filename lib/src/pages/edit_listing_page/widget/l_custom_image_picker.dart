import 'package:house_trade/house_trade_library.dart';

class CustomImagePicker extends StatelessWidget {
  const CustomImagePicker({
    required this.imageFileList,
    required this.onRemove,
    required this.pickImages,
    super.key,
  });

  final List<XFile> imageFileList;
  final void Function(XFile file) onRemove;
  final void Function() pickImages;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        childAspectRatio: 1 / 0.9,
      ),
      delegate: SliverChildListDelegate(
        [
          for (int i = 0; i < imageFileList.length; i++)
            SelectedImages(
              onRemove: onRemove,
              imageFile: imageFileList[i],
              iconBackgroundColor: Colors.green,
            ),
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
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
          ),
        ],
      ),
    );
  }
}
