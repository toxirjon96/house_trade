import 'package:house_trade/house_trade_library.dart';

class HouseInfoItem extends StatelessWidget {
  const HouseInfoItem({
    required this.image,
    required this.title,
    required this.bottom,
    required this.imageInfo,
    this.leftIcon,
    this.rightIcon,
    super.key,
  });

  final ImageProvider<Object> image;
  final IconButton? leftIcon;
  final IconButton? rightIcon;
  final String title;
  final Widget bottom;
  final Widget imageInfo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 260,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Align(
                    alignment: const Alignment(0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  rightIcon != null
                      ? Align(
                          alignment: const Alignment(0.9, -1),
                          child: Container(
                            width: 35,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Theme.of(context).colorScheme.background),
                            child: rightIcon,
                          ),
                        )
                      : const SizedBox(),
                  Align(
                    alignment: const Alignment(1, 0.7),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 5),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer
                              .withOpacity(0.8),
                        ),
                        child: imageInfo,
                      ),
                    ),
                  ),
                  leftIcon != null
                      ? Align(
                          alignment: const Alignment(-0.9, -0.9),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.lightGreen,
                            ),
                            child: leftIcon,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                    ),
                    const SizedBox(height: 10),
                    bottom,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
