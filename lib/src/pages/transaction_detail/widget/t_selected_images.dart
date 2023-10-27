import 'dart:io';

import 'package:house_trade/house_trade_library.dart';

class SelectedImages extends StatelessWidget {
  const SelectedImages({
    required this.imageFile,
    required this.onRemove,
    super.key,
  });

  final void Function(XFile item) onRemove;
  final XFile imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(0, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: FileImage(
                    File(imageFile.path),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.9, -0.9),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context)
                    .colorScheme
                    .onSecondaryContainer
                    .withOpacity(0.8),
              ),
              child: IconButton(
                onPressed: () {
                  onRemove(imageFile);
                },
                icon: Icon(
                  Icons.close,
                  size: 20,
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
