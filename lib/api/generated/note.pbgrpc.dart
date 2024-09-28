//
//  Generated code. Do not modify.
//  source: note.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'note.pb.dart' as $0;

export 'note.pb.dart';

@$pb.GrpcServiceName('note.NoteService')
class NoteServiceClient extends $grpc.Client {
  static final _$createNote = $grpc.ClientMethod<$0.CreateNoteRequest, $0.IdResponse>(
      '/note.NoteService/CreateNote',
      ($0.CreateNoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IdResponse.fromBuffer(value));
  static final _$getNote = $grpc.ClientMethod<$0.GetNoteRequest, $0.Note>(
      '/note.NoteService/GetNote',
      ($0.GetNoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Note.fromBuffer(value));
  static final _$getAllNotes = $grpc.ClientMethod<$0.empty, $0.AllNotesResponse>(
      '/note.NoteService/GetAllNotes',
      ($0.empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AllNotesResponse.fromBuffer(value));
  static final _$getNoteByDay = $grpc.ClientMethod<$0.DayRequest, $0.AllNotesResponse>(
      '/note.NoteService/GetNoteByDay',
      ($0.DayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AllNotesResponse.fromBuffer(value));
  static final _$updateNote = $grpc.ClientMethod<$0.UpdateNoteRequest, $0.IdResponse>(
      '/note.NoteService/UpdateNote',
      ($0.UpdateNoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.IdResponse.fromBuffer(value));
  static final _$deleteNote = $grpc.ClientMethod<$0.DeleteNoteRequest, $0.DeleteNoteResponse>(
      '/note.NoteService/DeleteNote',
      ($0.DeleteNoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteNoteResponse.fromBuffer(value));
  static final _$updateBool = $grpc.ClientMethod<$0.UpdateBoolRequest, $0.empty>(
      '/note.NoteService/UpdateBool',
      ($0.UpdateBoolRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.empty.fromBuffer(value));

  NoteServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.IdResponse> createNote($0.CreateNoteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.Note> getNote($0.GetNoteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.AllNotesResponse> getAllNotes($0.empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllNotes, request, options: options);
  }

  $grpc.ResponseFuture<$0.AllNotesResponse> getNoteByDay($0.DayRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNoteByDay, request, options: options);
  }

  $grpc.ResponseFuture<$0.IdResponse> updateNote($0.UpdateNoteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteNoteResponse> deleteNote($0.DeleteNoteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteNote, request, options: options);
  }

  $grpc.ResponseFuture<$0.empty> updateBool($0.UpdateBoolRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBool, request, options: options);
  }
}

@$pb.GrpcServiceName('note.NoteService')
abstract class NoteServiceBase extends $grpc.Service {
  $core.String get $name => 'note.NoteService';

  NoteServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateNoteRequest, $0.IdResponse>(
        'CreateNote',
        createNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateNoteRequest.fromBuffer(value),
        ($0.IdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetNoteRequest, $0.Note>(
        'GetNote',
        getNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetNoteRequest.fromBuffer(value),
        ($0.Note value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.empty, $0.AllNotesResponse>(
        'GetAllNotes',
        getAllNotes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.empty.fromBuffer(value),
        ($0.AllNotesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DayRequest, $0.AllNotesResponse>(
        'GetNoteByDay',
        getNoteByDay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DayRequest.fromBuffer(value),
        ($0.AllNotesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateNoteRequest, $0.IdResponse>(
        'UpdateNote',
        updateNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateNoteRequest.fromBuffer(value),
        ($0.IdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteNoteRequest, $0.DeleteNoteResponse>(
        'DeleteNote',
        deleteNote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteNoteRequest.fromBuffer(value),
        ($0.DeleteNoteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateBoolRequest, $0.empty>(
        'UpdateBool',
        updateBool_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateBoolRequest.fromBuffer(value),
        ($0.empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.IdResponse> createNote_Pre($grpc.ServiceCall call, $async.Future<$0.CreateNoteRequest> request) async {
    return createNote(call, await request);
  }

  $async.Future<$0.Note> getNote_Pre($grpc.ServiceCall call, $async.Future<$0.GetNoteRequest> request) async {
    return getNote(call, await request);
  }

  $async.Future<$0.AllNotesResponse> getAllNotes_Pre($grpc.ServiceCall call, $async.Future<$0.empty> request) async {
    return getAllNotes(call, await request);
  }

  $async.Future<$0.AllNotesResponse> getNoteByDay_Pre($grpc.ServiceCall call, $async.Future<$0.DayRequest> request) async {
    return getNoteByDay(call, await request);
  }

  $async.Future<$0.IdResponse> updateNote_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateNoteRequest> request) async {
    return updateNote(call, await request);
  }

  $async.Future<$0.DeleteNoteResponse> deleteNote_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteNoteRequest> request) async {
    return deleteNote(call, await request);
  }

  $async.Future<$0.empty> updateBool_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateBoolRequest> request) async {
    return updateBool(call, await request);
  }

  $async.Future<$0.IdResponse> createNote($grpc.ServiceCall call, $0.CreateNoteRequest request);
  $async.Future<$0.Note> getNote($grpc.ServiceCall call, $0.GetNoteRequest request);
  $async.Future<$0.AllNotesResponse> getAllNotes($grpc.ServiceCall call, $0.empty request);
  $async.Future<$0.AllNotesResponse> getNoteByDay($grpc.ServiceCall call, $0.DayRequest request);
  $async.Future<$0.IdResponse> updateNote($grpc.ServiceCall call, $0.UpdateNoteRequest request);
  $async.Future<$0.DeleteNoteResponse> deleteNote($grpc.ServiceCall call, $0.DeleteNoteRequest request);
  $async.Future<$0.empty> updateBool($grpc.ServiceCall call, $0.UpdateBoolRequest request);
}
