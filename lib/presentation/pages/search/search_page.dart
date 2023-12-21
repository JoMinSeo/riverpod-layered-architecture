import 'package:flutter/material.dart';
import 'package:riverpod_layered_architecture/presentation/components/pub_app_bar.dart';

part 'search_scaffold.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      appBar: PubAppbar(),
      searchBar: SearchBar(),
      packageList: SizedBox(),
    );
  }
}
