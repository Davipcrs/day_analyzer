import 'package:day_analyzer/api/connection.dart';
import 'package:day_analyzer/api/generated/note.pbgrpc.dart';
import 'package:day_analyzer/models/note.dart';

class ApiRequests {
  var apiConnectionInstance = createApiConnectionInstance();
  NoteServiceClient? noteStub;

  ApiRequests({required String IP, required int PORT}) {
    apiConnectionInstance.setConfig(ip: IP, port: PORT);
    var connection = apiConnectionInstance.returnConnection();

    noteStub = NoteServiceClient(connection);
  }

  // Service Starts

  getNote(int id) async {
    var note = noteStub!.getNote(GetNoteRequest(idNote: id));
    return NoteModel().convertToModel(await note);
  }

  getAllNotes() async {
    List<NoteModel> list = [];
    var allNotes = noteStub!.getAllNotes(empty());
    try {
      var awaitedNotes = await allNotes;
      for (var message in awaitedNotes.note) {
        NoteModel note = NoteModel();
        note.convertToModel(message);
        list.add(note);
      }
    } catch (e) {
      print("ERROR: $e");
    }

    return list;
  }

  getNoteByDay(String day) async {
    List<NoteModel> list = [];
    var allNotes = noteStub!.getNoteByDay(DayRequest(day: day));
    try {
      var awaitedNotes = await allNotes;
      for (var message in awaitedNotes.note) {
        NoteModel note = NoteModel();
        note.convertToModel(message);
        list.add(note);
      }
    } catch (e) {
      print("ERROR: $e");
    }

    return list;
  }

  createNote(NoteModel note) async {
    var id = noteStub!.createNote(note.convertToAdd());
    return await id;
  }

  updateBool(int id, bool boolean) {
    noteStub!.updateBool(UpdateBoolRequest(idNote: id, boolComplete: boolean));
  }

  updateNote(NoteModel note) {
    Note auxiliar = note.convertToGrpc();
    noteStub!.updateNote(
      UpdateNoteRequest(
          idNote: auxiliar.idNote,
          strText: auxiliar.strText,
          strMdText: auxiliar.strMdText,
          strDate: auxiliar.strDate,
          boolCompleted: auxiliar.boolCompleted),
    );
  }

  deleteNote(int id) {
    noteStub!.deleteNote(DeleteNoteRequest(idNote: id));
  }
}
