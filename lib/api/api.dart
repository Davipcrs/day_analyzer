import 'package:day_analyzer/api/connection.dart';
import 'package:day_analyzer/api/generated/note.pbgrpc.dart';
import 'package:day_analyzer/models/note.dart';

class ApiRequests {
  var apiConnectionInstance = createApiConnectionInstance();
  NoteServiceClient? noteStub;

  ApiRequests({required String IP, required int PORT}) {
    apiConnectionInstance.setConfig(ip: IP, port: PORT);
    var connection = apiConnectionInstance.returnConnection();

    NoteServiceClient noteStub = NoteServiceClient(connection);
  }

  // Service Starts

  getNote(int id) {}

  getAllNotes() {}

  getNoteByDay(String day) {}

  createNote(NoteModel note) {}

  updateBool(int id, bool boolean) {}

  updateNote(NoteModel note) {}

  deleteNote(int id) {}
}
