import 'package:house_trade/house_trade_library.dart';

class PropertyFeatures extends StatelessWidget {
  const PropertyFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Property features",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
        ),
        const SizedBox(height: 10),
        const CustomCounterContainer(name: CounterNames.bedroom),
        const SizedBox(height: 10),
        const CustomCounterContainer(name: CounterNames.bathroom),
        const SizedBox(height: 10),
        const CustomCounterContainer(name: CounterNames.balcony),
      ],
    );
  }
}
