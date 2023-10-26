import 'package:house_trade/house_trade_library.dart';

class ReviewSliver extends StatelessWidget {
  const ReviewSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ReviewItem(
                  houseImage: AssetImage("assets/images/li-image-1.png"),
                  type: "Fairview Apartment",
                  starMark: "4.9",
                  location: "Jakarta, Indonesia",
                  userImage: AssetImage('assets/images/user-7.png'),
                  fullName: "Jim Martin",
                  post:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                  time: "10 mins ago",
                ),
                const SizedBox(height: 10),
                const ReviewItem(
                  houseImage: AssetImage("assets/images/li-image-2.png"),
                  type: "Schoolview House",
                  starMark: "4.6",
                  location: "Jakarta, Indonesia",
                  userImage: AssetImage('assets/images/user-5.png'),
                  fullName: "Mindy Lane",
                  post:
                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperia.",
                  time: "10 mins ago",
                ),
                const SizedBox(height: 10),
                const ReviewItem(
                  houseImage: AssetImage("assets/images/li-image-3.png"),
                  type: "Fairview Apartment",
                  starMark: "4.9",
                  location: "Semarang, Indonesia",
                  userImage: AssetImage('assets/images/user-8.png'),
                  fullName: "Samuel Ella",
                  post:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                  time: "10 mins ago",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
