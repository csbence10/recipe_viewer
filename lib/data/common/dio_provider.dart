import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((_) {
  final options = BaseOptions(
      baseUrl: "https://familyfinancestest-f8319-default-rtdb.firebaseio.com");
  return Dio(options);
});
