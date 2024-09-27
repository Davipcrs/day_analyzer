import 'io_connection.dart' if (dart.library.html) "web_connection.dart"
    as multiplatform;

createApiConnectionInstance() {
  return multiplatform.ApiConnection();
}
