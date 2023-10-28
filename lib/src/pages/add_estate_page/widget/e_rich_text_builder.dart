import 'package:house_trade/house_trade_library.dart';

class RichTextBuilder extends StatelessWidget {
  const RichTextBuilder({
    required this.textList,
    super.key,
  });

  final List<TextTypeModel> textList;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: textList[0].text,
        style: textList[0].textType == TextType.boldText
            ? Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize: textList[0].fontSize,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                )
            : Theme.of(context).textTheme.labelLarge!.copyWith(
                  fontSize: textList[0].fontSize,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
        children: <TextSpan>[
          for (int i = 1; i < textList.length; i++)
            TextSpan(
              text: textList[i].text,
              style: textList[i].textType == TextType.boldText
                  ? Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: textList[i].fontSize,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      )
                  : Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: textList[i].fontSize,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
            ),
        ],
      ),
    );
  }
}
