import 'package:house_trade/house_trade_library.dart';

class AvatarProfileImage extends StatelessWidget {
  const AvatarProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: CircleAvatar(
            radius: 50, // Image radius
            backgroundImage: AssetImage("assets/images/user.jpg"),
          ),
        )
      ],
    );
  }
}
