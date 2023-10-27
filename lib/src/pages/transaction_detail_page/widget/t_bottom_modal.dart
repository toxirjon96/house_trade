import 'package:house_trade/house_trade_library.dart';

class BottomModal extends StatelessWidget {
  const BottomModal({super.key});

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
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xFF94C150), spreadRadius: 40, blurRadius: 80),
                BoxShadow(
                    color: Color(0xFF94C150), spreadRadius: 20, blurRadius: 40),
                BoxShadow(
                    color: Color(0xFF4F6D5E), spreadRadius: 15, blurRadius: 20),
              ],
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  Color(0xFF94C150),
                  Color(0xFF4F6D5E),
                ],
              ),
            ),
            child: const Icon(
              Icons.done,
              size: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 60),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Successfully ',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 32,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
              children: <TextSpan>[
                TextSpan(
                  text: 'submitted your review ',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 32,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Text(
            "Lorem ipsum dolor sit amet, consectetur.",
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          const Spacer(),
          CustomSubmitButton(
            text: "Continue Exploring",
            padding: const EdgeInsets.symmetric(
              horizontal: 80,
              vertical: 20,
            ),
            fontSize: 18,
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
