import 'package:house_trade/house_trade_library.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    required this.image,
    super.key,
  });

  final String fullName;
  final String phoneNumber;
  final String email;
  final ImageProvider<Object>? image;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TopAppBar(
                  rightWidget: const SizedBox(width: 60, height: 60),
                  title: "Edit Profile",
                  leftWidget: AppBarButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    size: 45,
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: 15,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 60, // Image radius
                  backgroundImage: image,
                ),
                const SizedBox(height: 80),
                TextFormField(
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                  initialValue: fullName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Full name',
                    suffixIcon: Icon(
                      Icons.person,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  initialValue: phoneNumber,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Phone number',
                    suffixIcon: Icon(
                      Icons.phone,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  initialValue: email,
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Email',
                    suffixIcon: Icon(
                      Icons.email,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.onSecondaryContainer.withOpacity(0.2),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.mail,
                          size: 30,
                          color: Theme.of(context).colorScheme.background,
                        ),
                        label: Text(
                          "Unlink",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.background,
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.onSecondaryContainer.withOpacity(0.2),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook_outlined,
                          size: 30,
                          color: Theme.of(context).colorScheme.background,
                        ),
                        label: Text(
                          "Link",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.background,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: Colors.lightGreen,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Choose location",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.background,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
