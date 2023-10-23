import 'package:house_trade/house_trade_library.dart';

class AvatarProfileImage extends StatelessWidget {
  const AvatarProfileImage({
    required this.userFullName,
    required this.userEmail,
    required this.onEditProfile,
    this.userImage,
    super.key,
  });

  final ImageProvider<Object>? userImage;
  final String userFullName;
  final String userEmail;
  final void Function() onEditProfile;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: CircleAvatar(
            radius: 60, // Image radius
            backgroundImage: userImage,
          ),
        ),
        Align(
          alignment: const Alignment(0.25, 0.1),
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF234F68),
            ),
            child: IconButton(
              icon: Icon(
                Icons.edit,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              onPressed: onEditProfile,
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0, 0.5),
          child: Text(
            userFullName,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
        ),
        Align(
          alignment: const Alignment(0, 0.7),
          child: Text(
            userEmail,
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
        ),
      ],
    );
  }
}
