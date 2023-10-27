import 'package:house_trade/house_trade_library.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  final String fullName = "Mathew Adam";
  final String phoneNumber = "+998941234569";
  final String email = "mathew@email.com";
  final ImageProvider image = const AssetImage("assets/images/user.png");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
          child: Column(
            children: [
              TopAppBar(
                leftWidget: const SizedBox(width: 30, height: 30),
                title: "Profile",
                rightWidget: AppBarButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings_rounded,
                    size: 30,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  size: 50,
                ),
              ),
              SizedBox(
                height: 180,
                child: AvatarProfileImage(
                  userFullName: fullName,
                  userEmail: email,
                  onEditProfile: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => EditProfile(
                          fullName: fullName,
                          phoneNumber: phoneNumber,
                          email: email,
                          image: image,
                        ),
                      ),
                    );
                  },
                  userImage: image,
                ),
              ),
              Row(
                children: [
                  RowInfoItem(
                    name: "Listings",
                    count: "30",
                    onTap: () {
                      ref
                          .read(profileProvider.notifier)
                          .setActiveAction("listings");
                    },
                  ),
                  const SizedBox(width: 10),
                  RowInfoItem(
                    name: "Sold",
                    count: "12",
                    onTap: () {
                      ref
                          .read(profileProvider.notifier)
                          .setActiveAction("sold");
                    },
                  ),
                  const SizedBox(width: 10),
                  RowInfoItem(
                    name: "Reviews",
                    count: "28",
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => const AllReviews(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Expanded(child: RowButtons()),
            ],
          ),
        ),
      ),
    );
  }
}
