import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_locations/models/Debouncer.dart';
import 'package:flutter_search_locations/utils/constants.dart';
import 'package:flutter_search_locations/view/widgets/custom_list_tile.dart';
import 'package:flutter_search_locations/view/widgets/custom_search_field.dart';
import 'package:flutter_search_locations/view/widgets/progress_indicator.dart';
import 'package:flutter_search_locations/view_model/location_search_viewmodel.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final _debouncer = Debouncer(milliseconds: 300);

  void _onSearchValueChanged(String value, WidgetRef ref) {
    _debouncer.run(() {
      var controller = ref.read(searchControllerProvider.notifier);
      controller.updateSearch(value);
    });
  }

  static const _progressLoading = CustomProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: kScreenPadding,
          child: Column(
            children: [
              CustomSearchField(
                hintText: kSearchHintText,
                searchController: _searchController,
                onChanged: (value) => _onSearchValueChanged(value, ref),
              ),
              Consumer(
                builder: (context, ref, child) {
                  final searchState = ref.watch(searchControllerProvider);
                  return searchState.when(
                    data: (data) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: data.locations.length ?? 0,
                          itemBuilder: (BuildContext context, int index) {
                            return CustomListTile(
                              name: '${data.locations[index].name}',
                              locality: '${data.locations[index].parent?.name}',
                              type: '${data.locations[index].type}',
                            );
                          },
                        ),
                      );
                    },
                    loading: () {
                      // Show a loading spinner or something
                      return _progressLoading;
                    },
                    error: (error, stackTrace) {
                      // Show an error message
                      return Text(error.toString());
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
