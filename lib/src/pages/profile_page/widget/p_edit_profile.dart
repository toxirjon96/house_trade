import 'package:house_trade/house_trade_library.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TopAppBar(
                rightWidget: const SizedBox(width: 60, height: 60),
                title: "Edit Profile",
                leftWidget: AppBarButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              const CircleAvatar(
                radius: 60, // Image radius
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  labelText: 'Full name',
                  suffixIcon: Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
