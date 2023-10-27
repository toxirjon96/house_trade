import 'package:house_trade/house_trade_library.dart';

class CustomSubmitButton extends StatelessWidget {
  const CustomSubmitButton({
    required this.text,
    required this.onPressed,
    this.alignment = Alignment.bottomCenter,
    this.padding = const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
    this.borderRadius = 15,
    this.fontSize = 16,
    super.key,
  });

  final String text;
  final AlignmentGeometry alignment;
  final void Function() onPressed;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          backgroundColor: Colors.lightGreen,
          foregroundColor: Colors.white,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: fontSize,
                color: Theme.of(context).colorScheme.background,
              ),
        ),
      ),
    );
  }
}
