import 'package:day_analyzer/api/api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiServicesProvider = Provider(
  (ref) {
    if (kIsWeb) {
      return ApiRequests(IP: ref.watch(apiHost), PORT: 50051);
    }
    return ApiRequests(IP: ref.watch(apiHost), PORT: 50051);
  },
);

final apiHost = StateProvider(
  (ref) {
    if (kIsWeb) {
      return "";
    } else {
      return "";
    }
  },
);
final apiPorts = StateProvider(
  (ref) {
    if (kIsWeb) {
      return 50051;
    } else {
      return 50051;
    }
  },
);
final boolNullHost = StateProvider((ref) => true);
