import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'dto/user_dto.dart';

part '../../../../gen/src/core/data/remote/api_service.g.dart';

class _Endpoint {
  static const String baseUrl = 'https:example.com/api/v1/';

  static const users = 'users';
}

@RestApi(baseUrl: _Endpoint.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(_Endpoint.users)
  Future<UserDto> getUsers();
}
