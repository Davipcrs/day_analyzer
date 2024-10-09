import 'package:day_analyzer/api/api.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

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

readServerIp(WidgetRef ref) async {
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
  FlutterSecureStorage storage =
      FlutterSecureStorage(aOptions: _getAndroidOptions());
  var value = await storage.read(key: "server_ip");

  if (value == null) {
    if (ref.watch(boolNullHost) == false) {
      ref.read(boolNullHost.notifier).state = true;
    }
  } else {
    ref.read(boolNullHost.notifier).state = false;
    ref.read(apiHost.notifier).state = value.split('-')[0];
    ref.read(apiPorts.notifier).state = int.parse(value.split('-')[1]);
  }
}

saveServerIp(String host, int port) async {
  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
  FlutterSecureStorage storage =
      FlutterSecureStorage(aOptions: _getAndroidOptions());
  await storage.write(key: "server_ip", value: '$host-$port');
}
