import 'package:dio/dio.dart';
import 'package:recipe_viewer/data/recipes/mock_data.dart';

class MockDio implements Dio {
  @override
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    if (path == '/recipes.json')
      return FakeRecipeResponse(mockRecipes) as Response<T>;
    else if (path.contains('/recipe_detail/')) {
      final id = int.parse(path.split('/').last[0]);
      return FakeRecipeResponse(mockRecipeDetails[id]) as Response<T>;
    }
    throw UnimplementedError();
  }

  @override
  void noSuchMethod(Invocation invocation) {
    throw UnimplementedError();
  }
}

class FakeRecipeResponse implements Response<dynamic> {
  FakeRecipeResponse(this.data);

  @override
  final dynamic data;

  @override
  void noSuchMethod(Invocation invocation) {
    throw UnimplementedError();
  }
}
