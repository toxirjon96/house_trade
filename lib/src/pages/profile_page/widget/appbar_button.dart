import 'package:house_trade/house_trade_library.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final Icon icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
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
