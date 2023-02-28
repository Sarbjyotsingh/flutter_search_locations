import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_search_locations/data/response/api_search_response.dart';
import 'package:flutter_search_locations/models/api_repsonse_models/search_response_model.dart';

final searchControllerProvider = StateNotifierProvider<SearchControllerNotifier,
    AsyncValue<SearchResponseModel>>(
  (ref) => SearchControllerNotifier(),
);

class SearchControllerNotifier
    extends StateNotifier<AsyncValue<SearchResponseModel>> {
  SearchControllerNotifier()
      : super(const AsyncValue<SearchResponseModel>.loading()) {
    _init();
  }

  void _init() {
    state = AsyncValue.data(SearchResponseModel(locations: [], version: '0'));
  }

  Future<void> updateSearch(String query) async {
    state = const AsyncLoading();
    final response = await LocationSearchAPI().getLocationSearchResponse(query);
    state = AsyncValue.data(response);
  }
}
