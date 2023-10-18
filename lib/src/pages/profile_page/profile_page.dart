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
            const Expanded(child: AvatarProfileImage()),
          ],
        ),
      ),
    );
  }
}
