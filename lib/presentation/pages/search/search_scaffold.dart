part of 'search_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    super.key,
    required this.appBar,
    required this.searchBar,
    required this.packageList,
  });

  final PreferredSizeWidget appBar;

  final Widget searchBar;

  final Widget packageList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          searchBar,
          Expanded(child: packageList),
        ],
      ),
    );
  }
}
