import 'package:flutter_search_locations/data/network/network_api_service.dart';
import 'package:flutter_search_locations/models/api_repsonse_models/search_response_model.dart';

const String apiEndPoint =
    'https://mvvvip1.defas-fgi.de/mvv/XML_STOPFINDER_REQUEST?language=de&outputFormat=RapidJSON&type_sf=any';

class LocationSearchAPI {
  Future<SearchResponseModel> getLocationSearchResponse(
      String searchText) async {
    SearchResponseModel apiResponse;
    if (searchText.isNotEmpty) {
      String fetchUrl = '$apiEndPoint&name_sf={$searchText}';

      apiResponse = SearchResponseModel.fromJson(
          await NetworkApiService().getGetApiResponse(fetchUrl));
    } else {
      apiResponse = SearchResponseModel();
    }
    return apiResponse;
  }
}
