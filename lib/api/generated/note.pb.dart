//
//  Generated code. Do not modify.
//  source: note.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class empty extends $pb.GeneratedMessage {
  factory empty() => create();
  empty._() : super();
  factory empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  empty clone() => empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  empty copyWith(void Function(empty) updates) => super.copyWith((message) => updates(message as empty)) as empty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static empty create() => empty._();
  empty createEmptyInstance() => create();
  static $pb.PbList<empty> createRepeated() => $pb.PbList<empty>();
  @$core.pragma('dart2js:noInline')
  static empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<empty>(create);
  static empty? _defaultInstance;
}

class UpdateBoolRequest extends $pb.GeneratedMessage {
  factory UpdateBoolRequest({
    $core.int? idNote,
    $core.bool? boolComplete,
  }) {
    final $result = create();
    if (idNote != null) {
      $result.idNote = idNote;
    }
    if (boolComplete != null) {
      $result.boolComplete = boolComplete;
    }
    return $result;
  }
  UpdateBoolRequest._() : super();
  factory UpdateBoolRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateBoolRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateBoolRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'idNote', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'boolComplete')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateBoolRequest clone() => UpdateBoolRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateBoolRequest copyWith(void Function(UpdateBoolRequest) updates) => super.copyWith((message) => updates(message as UpdateBoolRequest)) as UpdateBoolRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateBoolRequest create() => UpdateBoolRequest._();
  UpdateBoolRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateBoolRequest> createRepeated() => $pb.PbList<UpdateBoolRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateBoolRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateBoolRequest>(create);
  static UpdateBoolRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idNote => $_getIZ(0);
  @$pb.TagNumber(1)
  set idNote($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdNote() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get boolComplete => $_getBF(1);
  @$pb.TagNumber(2)
  set boolComplete($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBoolComplete() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoolComplete() => clearField(2);
}

class Note extends $pb.GeneratedMessage {
  factory Note({
    $core.int? idNote,
    $core.String? strText,
    $core.String? strMdText,
    $core.String? strDate,
    $core.bool? boolCompleted,
  }) {
    final $result = create();
    if (idNote != null) {
      $result.idNote = idNote;
    }
    if (strText != null) {
      $result.strText = strText;
    }
    if (strMdText != null) {
      $result.strMdText = strMdText;
    }
    if (strDate != null) {
      $result.strDate = strDate;
    }
    if (boolCompleted != null) {
      $result.boolCompleted = boolCompleted;
    }
    return $result;
  }
  Note._() : super();
  factory Note.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Note.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Note', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'idNote', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'strText')
    ..aOS(3, _omitFieldNames ? '' : 'strMdText')
    ..aOS(4, _omitFieldNames ? '' : 'strDate')
    ..aOB(5, _omitFieldNames ? '' : 'boolCompleted')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Note clone() => Note()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Note copyWith(void Function(Note) updates) => super.copyWith((message) => updates(message as Note)) as Note;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Note create() => Note._();
  Note createEmptyInstance() => create();
  static $pb.PbList<Note> createRepeated() => $pb.PbList<Note>();
  @$core.pragma('dart2js:noInline')
  static Note getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Note>(create);
  static Note? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idNote => $_getIZ(0);
  @$pb.TagNumber(1)
  set idNote($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdNote() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get strText => $_getSZ(1);
  @$pb.TagNumber(2)
  set strText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStrText() => $_has(1);
  @$pb.TagNumber(2)
  void clearStrText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get strMdText => $_getSZ(2);
  @$pb.TagNumber(3)
  set strMdText($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStrMdText() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrMdText() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get strDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set strDate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStrDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearStrDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get boolCompleted => $_getBF(4);
  @$pb.TagNumber(5)
  set boolCompleted($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBoolCompleted() => $_has(4);
  @$pb.TagNumber(5)
  void clearBoolCompleted() => clearField(5);
}

class CreateNoteRequest extends $pb.GeneratedMessage {
  factory CreateNoteRequest({
    $core.String? strText,
    $core.String? strMdText,
    $core.String? strDate,
    $core.bool? boolCompleted,
  }) {
    final $result = create();
    if (strText != null) {
      $result.strText = strText;
    }
    if (strMdText != null) {
      $result.strMdText = strMdText;
    }
    if (strDate != null) {
      $result.strDate = strDate;
    }
    if (boolCompleted != null) {
      $result.boolCompleted = boolCompleted;
    }
    return $result;
  }
  CreateNoteRequest._() : super();
  factory CreateNoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateNoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateNoteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strText')
    ..aOS(2, _omitFieldNames ? '' : 'strMdText')
    ..aOS(3, _omitFieldNames ? '' : 'strDate')
    ..aOB(4, _omitFieldNames ? '' : 'boolCompleted')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateNoteRequest clone() => CreateNoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateNoteRequest copyWith(void Function(CreateNoteRequest) updates) => super.copyWith((message) => updates(message as CreateNoteRequest)) as CreateNoteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateNoteRequest create() => CreateNoteRequest._();
  CreateNoteRequest createEmptyInstance() => create();
  static $pb.PbList<CreateNoteRequest> createRepeated() => $pb.PbList<CreateNoteRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateNoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateNoteRequest>(create);
  static CreateNoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get strText => $_getSZ(0);
  @$pb.TagNumber(1)
  set strText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStrText() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrText() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get strMdText => $_getSZ(1);
  @$pb.TagNumber(2)
  set strMdText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStrMdText() => $_has(1);
  @$pb.TagNumber(2)
  void clearStrMdText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get strDate => $_getSZ(2);
  @$pb.TagNumber(3)
  set strDate($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStrDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get boolCompleted => $_getBF(3);
  @$pb.TagNumber(4)
  set boolCompleted($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBoolCompleted() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoolCompleted() => clearField(4);
}

class GetNoteRequest extends $pb.GeneratedMessage {
  factory GetNoteRequest({
    $core.int? idNote,
  }) {
    final $result = create();
    if (idNote != null) {
      $result.idNote = idNote;
    }
    return $result;
  }
  GetNoteRequest._() : super();
  factory GetNoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNoteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'idNote', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNoteRequest clone() => GetNoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNoteRequest copyWith(void Function(GetNoteRequest) updates) => super.copyWith((message) => updates(message as GetNoteRequest)) as GetNoteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNoteRequest create() => GetNoteRequest._();
  GetNoteRequest createEmptyInstance() => create();
  static $pb.PbList<GetNoteRequest> createRepeated() => $pb.PbList<GetNoteRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNoteRequest>(create);
  static GetNoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idNote => $_getIZ(0);
  @$pb.TagNumber(1)
  set idNote($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdNote() => clearField(1);
}

class UpdateNoteRequest extends $pb.GeneratedMessage {
  factory UpdateNoteRequest({
    $core.int? idNote,
    $core.String? strText,
    $core.String? strMdText,
    $core.String? strDate,
    $core.bool? boolCompleted,
  }) {
    final $result = create();
    if (idNote != null) {
      $result.idNote = idNote;
    }
    if (strText != null) {
      $result.strText = strText;
    }
    if (strMdText != null) {
      $result.strMdText = strMdText;
    }
    if (strDate != null) {
      $result.strDate = strDate;
    }
    if (boolCompleted != null) {
      $result.boolCompleted = boolCompleted;
    }
    return $result;
  }
  UpdateNoteRequest._() : super();
  factory UpdateNoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateNoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateNoteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'idNote', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'strText')
    ..aOS(3, _omitFieldNames ? '' : 'strMdText')
    ..aOS(4, _omitFieldNames ? '' : 'strDate')
    ..aOB(5, _omitFieldNames ? '' : 'boolCompleted')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateNoteRequest clone() => UpdateNoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateNoteRequest copyWith(void Function(UpdateNoteRequest) updates) => super.copyWith((message) => updates(message as UpdateNoteRequest)) as UpdateNoteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateNoteRequest create() => UpdateNoteRequest._();
  UpdateNoteRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateNoteRequest> createRepeated() => $pb.PbList<UpdateNoteRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateNoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateNoteRequest>(create);
  static UpdateNoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idNote => $_getIZ(0);
  @$pb.TagNumber(1)
  set idNote($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdNote() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get strText => $_getSZ(1);
  @$pb.TagNumber(2)
  set strText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStrText() => $_has(1);
  @$pb.TagNumber(2)
  void clearStrText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get strMdText => $_getSZ(2);
  @$pb.TagNumber(3)
  set strMdText($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStrMdText() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrMdText() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get strDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set strDate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStrDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearStrDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get boolCompleted => $_getBF(4);
  @$pb.TagNumber(5)
  set boolCompleted($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBoolCompleted() => $_has(4);
  @$pb.TagNumber(5)
  void clearBoolCompleted() => clearField(5);
}

class DeleteNoteRequest extends $pb.GeneratedMessage {
  factory DeleteNoteRequest({
    $core.int? idNote,
  }) {
    final $result = create();
    if (idNote != null) {
      $result.idNote = idNote;
    }
    return $result;
  }
  DeleteNoteRequest._() : super();
  factory DeleteNoteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteNoteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteNoteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'idNote', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteNoteRequest clone() => DeleteNoteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteNoteRequest copyWith(void Function(DeleteNoteRequest) updates) => super.copyWith((message) => updates(message as DeleteNoteRequest)) as DeleteNoteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteNoteRequest create() => DeleteNoteRequest._();
  DeleteNoteRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteNoteRequest> createRepeated() => $pb.PbList<DeleteNoteRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteNoteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteNoteRequest>(create);
  static DeleteNoteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get idNote => $_getIZ(0);
  @$pb.TagNumber(1)
  set idNote($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdNote() => clearField(1);
}

class NoteResponse extends $pb.GeneratedMessage {
  factory NoteResponse({
    Note? note,
  }) {
    final $result = create();
    if (note != null) {
      $result.note = note;
    }
    return $result;
  }
  NoteResponse._() : super();
  factory NoteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NoteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NoteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..aOM<Note>(1, _omitFieldNames ? '' : 'note', subBuilder: Note.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NoteResponse clone() => NoteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NoteResponse copyWith(void Function(NoteResponse) updates) => super.copyWith((message) => updates(message as NoteResponse)) as NoteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoteResponse create() => NoteResponse._();
  NoteResponse createEmptyInstance() => create();
  static $pb.PbList<NoteResponse> createRepeated() => $pb.PbList<NoteResponse>();
  @$core.pragma('dart2js:noInline')
  static NoteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoteResponse>(create);
  static NoteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Note get note => $_getN(0);
  @$pb.TagNumber(1)
  set note(Note v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNote() => $_has(0);
  @$pb.TagNumber(1)
  void clearNote() => clearField(1);
  @$pb.TagNumber(1)
  Note ensureNote() => $_ensure(0);
}

class DeleteNoteResponse extends $pb.GeneratedMessage {
  factory DeleteNoteResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  DeleteNoteResponse._() : super();
  factory DeleteNoteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteNoteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteNoteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteNoteResponse clone() => DeleteNoteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteNoteResponse copyWith(void Function(DeleteNoteResponse) updates) => super.copyWith((message) => updates(message as DeleteNoteResponse)) as DeleteNoteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteNoteResponse create() => DeleteNoteResponse._();
  DeleteNoteResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteNoteResponse> createRepeated() => $pb.PbList<DeleteNoteResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteNoteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteNoteResponse>(create);
  static DeleteNoteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class AllNotesResponse extends $pb.GeneratedMessage {
  factory AllNotesResponse({
    $core.Iterable<Note>? note,
  }) {
    final $result = create();
    if (note != null) {
      $result.note.addAll(note);
    }
    return $result;
  }
  AllNotesResponse._() : super();
  factory AllNotesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllNotesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllNotesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..pc<Note>(1, _omitFieldNames ? '' : 'note', $pb.PbFieldType.PM, subBuilder: Note.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllNotesResponse clone() => AllNotesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllNotesResponse copyWith(void Function(AllNotesResponse) updates) => super.copyWith((message) => updates(message as AllNotesResponse)) as AllNotesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllNotesResponse create() => AllNotesResponse._();
  AllNotesResponse createEmptyInstance() => create();
  static $pb.PbList<AllNotesResponse> createRepeated() => $pb.PbList<AllNotesResponse>();
  @$core.pragma('dart2js:noInline')
  static AllNotesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllNotesResponse>(create);
  static AllNotesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Note> get note => $_getList(0);
}

class IdResponse extends $pb.GeneratedMessage {
  factory IdResponse({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  IdResponse._() : super();
  factory IdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IdResponse clone() => IdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IdResponse copyWith(void Function(IdResponse) updates) => super.copyWith((message) => updates(message as IdResponse)) as IdResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IdResponse create() => IdResponse._();
  IdResponse createEmptyInstance() => create();
  static $pb.PbList<IdResponse> createRepeated() => $pb.PbList<IdResponse>();
  @$core.pragma('dart2js:noInline')
  static IdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IdResponse>(create);
  static IdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DayRequest extends $pb.GeneratedMessage {
  factory DayRequest({
    $core.String? day,
  }) {
    final $result = create();
    if (day != null) {
      $result.day = day;
    }
    return $result;
  }
  DayRequest._() : super();
  factory DayRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DayRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DayRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'note'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'day')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DayRequest clone() => DayRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DayRequest copyWith(void Function(DayRequest) updates) => super.copyWith((message) => updates(message as DayRequest)) as DayRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DayRequest create() => DayRequest._();
  DayRequest createEmptyInstance() => create();
  static $pb.PbList<DayRequest> createRepeated() => $pb.PbList<DayRequest>();
  @$core.pragma('dart2js:noInline')
  static DayRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DayRequest>(create);
  static DayRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get day => $_getSZ(0);
  @$pb.TagNumber(1)
  set day($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDay() => $_has(0);
  @$pb.TagNumber(1)
  void clearDay() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
