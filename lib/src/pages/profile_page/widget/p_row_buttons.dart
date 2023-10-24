import 'package:house_trade/house_trade_library.dart';
import 'package:house_trade/src/pages/profile_page/widget/p_listings.dart';

class RowButtons extends ConsumerWidget {
  const RowButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String activeAction = ref.watch(profileProvider);
    Widget content = const Transaction();
    if (activeAction == 'transaction') {
      content = const Transaction();
    } else if (activeAction == 'listings') {
      content = const Listings();
    } else {
      content = SliverPadding(
        padding: const EdgeInsets.all(5),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            [
              Center(
                child: Text(
                  "Uh... Nothing found!",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        const CustomSliverAppBar(),
        content,
      ],
    );
  }
}
