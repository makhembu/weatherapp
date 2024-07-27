import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApiCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'api',
      apiUrl:
          'https://data.api.xweather.com/conditions/:auto?format=json&plimit=1&filter=1min&client_id=eGZhkkK248qfZ3R8AzTBz&client_secret=NCNMSqbiwDkpRrmdGzapg6ugdvr2GGOnufVzsdsg',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response[:].place.name''',
      ));
  static String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response[:].place.country''',
      ));
  static double? temperature(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.response[:].periods[:].tempC''',
      ));
  static int? humidity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response[:].periods[:].humidity''',
      ));
  static String? weather(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response[:].periods[:].weather''',
      ));
  static double? windspeed(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.response[:].periods[:].windSpeedKPH''',
      ));
  static int? precipmm(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response[:].periods[:].precipMM''',
      ));
  static double? feelslike(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.response[:].periods[:].feelslikeC''',
      ));
  static int? uvi(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response[:].periods[:].uvi''',
      ));
  static String? icon(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.response[:].periods[:].icon''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
