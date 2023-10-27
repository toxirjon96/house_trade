import 'package:house_trade/house_trade_library.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({
    required this.image,
    required this.topLeftIcon,
    required this.type,
    super.key,
  });

  final ImageProvider<Object> image;
  final Icon topLeftIcon;
  final String type;

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
                borderRadius: BorderRadius.circular(35),
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.9, -0.9),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: topLeftIcon,
            ),
          ),
          Align(
            alignment: const Alignment(-0.8, 0.7),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context)
                    .colorScheme
                    .onSecondaryContainer
                    .withOpacity(0.8),
              ),
              child: Text(
                type,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
