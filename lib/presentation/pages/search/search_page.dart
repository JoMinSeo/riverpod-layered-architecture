import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:riverpod_layered_architecture/core_packages.dart';
import 'package:riverpod_layered_architecture/features/pub/application/state/pub_state.dart';
import 'package:riverpod_layered_architecture/presentation/components/package_item.dart';
import 'package:riverpod_layered_architecture/presentation/components/pub_app_bar.dart';
import 'package:riverpod_layered_architecture/presentation/components/search_bar.dart';

part 'search_scaffold.dart';

part 'widgets/pub_list_body.dart';

class SearchPage extends HookWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    // useListenable(searchController);
    
    return _Scaffold(
      appBar: const PubAppbar(),
      searchBar: PubSearchBar(controller: searchController),
      packageList: _PubListBody(searchController: searchController),
    );
  }
}
