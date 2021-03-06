//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AnotherFakeApi {
  AnotherFakeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// To test special tags
  ///
  /// To test special tags and operation ID starting with number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Client] client (required):
  ///   client model
  Future<Response> 123test@$%SpecialTagsWithHttpInfo(Client client) async {
    // Verify required params are set.
    if (client == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: client');
    }

    final path = '/another-fake/dummy'.replaceAll('{format}', 'json');

    Object postBody = client;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>[];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// To test special tags
  ///
  /// To test special tags and operation ID starting with number
  ///
  /// Parameters:
  ///
  /// * [Client] client (required):
  ///   client model
  Future<Client> 123test@$%SpecialTags(Client client) async {
    final response = await 123test@$%SpecialTagsWithHttpInfo(client);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Client') as Client;
    }
    return null;
  }
}
