import 'package:house_trade/house_trade_library.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    required this.icon,
    required this.onPressed,
    this.size = 60,
    super.key,
  });

  final Icon icon;
  final void Function() onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF5F4F8),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
