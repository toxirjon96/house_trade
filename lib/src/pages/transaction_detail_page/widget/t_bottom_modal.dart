import 'package:house_trade/house_trade_library.dart';

class BottomModal extends StatelessWidget {
  const BottomModal({
    required this.subText,
    required this.bottom,
    required this.richTextBuilder,
    required this.iconData,
    required this.seedColor,
    super.key,
  });

  final String subText;
  final Color seedColor;
  final Widget bottom;
  final RichTextBuilder richTextBuilder;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 60,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 5,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
          const SizedBox(height: 80),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: seedColor.withOpacity(0.1),
                  spreadRadius: 40,
                  blurRadius: 80,
                ),
                BoxShadow(
                  color: seedColor.withOpacity(0.6),
                  spreadRadius: 20,
                  blurRadius: 40,
                ),
                BoxShadow(
                  color: seedColor,
                  spreadRadius: 15,
                  blurRadius: 20,
                ),
              ],
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  seedColor.withGreen(150),
                  seedColor,
                ],
              ),
            ),
            child: Icon(
              iconData,
              size: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 60),
          richTextBuilder,
          const SizedBox(height: 30),
          Text(
            subText,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          const Spacer(),
          bottom,
        ],
      ),
    );
  }
}
