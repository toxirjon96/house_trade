import 'package:house_trade/house_trade_library.dart';

class ReviewOwner extends StatelessWidget {
  const ReviewOwner({
    required this.userImage,
    required this.name,
    this.subTitle = 'Owner',
    super.key,
  });

  final ImageProvider<Object> userImage;
  final String name;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color:
            Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 40, // Image radius
          backgroundImage: userImage,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: 16,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
            ),
            const SizedBox(height: 2),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
            ),
          ],
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chat,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
