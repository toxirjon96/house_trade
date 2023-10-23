import 'package:house_trade/house_trade_library.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopAppBar(
              leftWidget: const SizedBox(width: 60, height: 60),
              title: "Profile",
              rightWidget: AppBarButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_rounded,
                  size: 30,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            SizedBox(
              height: 180,
              child: AvatarProfileImage(
                userFullName: "Mathew Adam",
                userEmail: "mathew@email.com",
                onEditProfile: () {},
                userImage: const AssetImage("assets/images/user.jpg"),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  RowInfoItem(name: "Listings", count: "30"),
                  SizedBox(width: 10),
                  RowInfoItem(name: "Sold", count: "12"),
                  SizedBox(width: 10),
                  RowInfoItem(name: "Reviews", count: "28"),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const RowButtons(),
          ],
        ),
      ),
    );
  }
}
