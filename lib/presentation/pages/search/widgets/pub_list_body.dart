part of '../search_page.dart';

class _PubListBody extends ConsumerWidget {
  const _PubListBody({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: ListView.custom(
        padding: const EdgeInsets.only(top: 30),
        childrenDelegate: SliverChildBuilderDelegate((context, index) {
          const packagesPackageSize = 100;
          const searchPageSize = 10;
          final pageSize = searchController.text.isEmpty ? packagesPackageSize : searchPageSize;

          final page = index ~/ pageSize + 1;
          final indexInPage = index % pageSize;
          final packageList = ref.watch(
            fetchPackagesProvider(page: page, search: searchController.text),
          );

          return packageList.when(
            error: (err, stack) => Text('Error $err'),
            loading: () => const PackageItemShimmer(),
            data: (packages) {
              if (indexInPage >= packages.length) return null;

              final package = packages[indexInPage];

              return PackageItem(
                name: package.name,
                description: package.latest.pubspec.description,
                version: package.latest.version,

                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (context) {
                //       return PackageDetailPage(
                //         packageName: package.name,
                //       );
                //     },
                //   ),
                // ),
              );
            },
          );
        }),
      ),
    );
  }
}
