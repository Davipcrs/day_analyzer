//
//  Generated code. Do not modify.
//  source: note.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use emptyDescriptor instead')
const empty$json = {
  '1': 'empty',
};

/// Descriptor for `empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVlbXB0eQ==');

@$core.Deprecated('Use updateBoolRequestDescriptor instead')
const UpdateBoolRequest$json = {
  '1': 'UpdateBoolRequest',
  '2': [
    {'1': 'id_note', '3': 1, '4': 1, '5': 5, '10': 'idNote'},
    {'1': 'bool_completed', '3': 2, '4': 1, '5': 8, '10': 'boolCompleted'},
  ],
};

/// Descriptor for `UpdateBoolRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateBoolRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVCb29sUmVxdWVzdBIXCgdpZF9ub3RlGAEgASgFUgZpZE5vdGUSJQoOYm9vbF9jb2'
    '1wbGV0ZWQYAiABKAhSDWJvb2xDb21wbGV0ZWQ=');

@$core.Deprecated('Use noteDescriptor instead')
const Note$json = {
  '1': 'Note',
  '2': [
    {'1': 'id_note', '3': 1, '4': 1, '5': 5, '10': 'idNote'},
    {'1': 'str_text', '3': 2, '4': 1, '5': 9, '10': 'strText'},
    {'1': 'str_md_text', '3': 3, '4': 1, '5': 9, '10': 'strMdText'},
    {'1': 'str_date', '3': 4, '4': 1, '5': 9, '10': 'strDate'},
    {'1': 'bool_completed', '3': 5, '4': 1, '5': 8, '10': 'boolCompleted'},
  ],
};

/// Descriptor for `Note`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noteDescriptor = $convert.base64Decode(
    'CgROb3RlEhcKB2lkX25vdGUYASABKAVSBmlkTm90ZRIZCghzdHJfdGV4dBgCIAEoCVIHc3RyVG'
    'V4dBIeCgtzdHJfbWRfdGV4dBgDIAEoCVIJc3RyTWRUZXh0EhkKCHN0cl9kYXRlGAQgASgJUgdz'
    'dHJEYXRlEiUKDmJvb2xfY29tcGxldGVkGAUgASgIUg1ib29sQ29tcGxldGVk');

@$core.Deprecated('Use createNoteRequestDescriptor instead')
const CreateNoteRequest$json = {
  '1': 'CreateNoteRequest',
  '2': [
    {'1': 'str_text', '3': 1, '4': 1, '5': 9, '10': 'strText'},
    {'1': 'str_md_text', '3': 2, '4': 1, '5': 9, '10': 'strMdText'},
    {'1': 'str_date', '3': 3, '4': 1, '5': 9, '10': 'strDate'},
    {'1': 'bool_completed', '3': 4, '4': 1, '5': 8, '10': 'boolCompleted'},
  ],
};

/// Descriptor for `CreateNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createNoteRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVOb3RlUmVxdWVzdBIZCghzdHJfdGV4dBgBIAEoCVIHc3RyVGV4dBIeCgtzdHJfbW'
    'RfdGV4dBgCIAEoCVIJc3RyTWRUZXh0EhkKCHN0cl9kYXRlGAMgASgJUgdzdHJEYXRlEiUKDmJv'
    'b2xfY29tcGxldGVkGAQgASgIUg1ib29sQ29tcGxldGVk');

@$core.Deprecated('Use getNoteRequestDescriptor instead')
const GetNoteRequest$json = {
  '1': 'GetNoteRequest',
  '2': [
    {'1': 'id_note', '3': 1, '4': 1, '5': 5, '10': 'idNote'},
  ],
};

/// Descriptor for `GetNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNoteRequestDescriptor = $convert.base64Decode(
    'Cg5HZXROb3RlUmVxdWVzdBIXCgdpZF9ub3RlGAEgASgFUgZpZE5vdGU=');

@$core.Deprecated('Use updateNoteRequestDescriptor instead')
const UpdateNoteRequest$json = {
  '1': 'UpdateNoteRequest',
  '2': [
    {'1': 'id_note', '3': 1, '4': 1, '5': 5, '10': 'idNote'},
    {'1': 'str_text', '3': 2, '4': 1, '5': 9, '10': 'strText'},
    {'1': 'str_md_text', '3': 3, '4': 1, '5': 9, '10': 'strMdText'},
    {'1': 'str_date', '3': 4, '4': 1, '5': 9, '10': 'strDate'},
    {'1': 'bool_completed', '3': 5, '4': 1, '5': 8, '10': 'boolCompleted'},
  ],
};

/// Descriptor for `UpdateNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateNoteRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVOb3RlUmVxdWVzdBIXCgdpZF9ub3RlGAEgASgFUgZpZE5vdGUSGQoIc3RyX3RleH'
    'QYAiABKAlSB3N0clRleHQSHgoLc3RyX21kX3RleHQYAyABKAlSCXN0ck1kVGV4dBIZCghzdHJf'
    'ZGF0ZRgEIAEoCVIHc3RyRGF0ZRIlCg5ib29sX2NvbXBsZXRlZBgFIAEoCFINYm9vbENvbXBsZX'
    'RlZA==');

@$core.Deprecated('Use deleteNoteRequestDescriptor instead')
const DeleteNoteRequest$json = {
  '1': 'DeleteNoteRequest',
  '2': [
    {'1': 'id_note', '3': 1, '4': 1, '5': 5, '10': 'idNote'},
  ],
};

/// Descriptor for `DeleteNoteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteNoteRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVOb3RlUmVxdWVzdBIXCgdpZF9ub3RlGAEgASgFUgZpZE5vdGU=');

@$core.Deprecated('Use noteResponseDescriptor instead')
const NoteResponse$json = {
  '1': 'NoteResponse',
  '2': [
    {'1': 'note', '3': 1, '4': 1, '5': 11, '6': '.note.Note', '10': 'note'},
  ],
};

/// Descriptor for `NoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noteResponseDescriptor = $convert.base64Decode(
    'CgxOb3RlUmVzcG9uc2USHgoEbm90ZRgBIAEoCzIKLm5vdGUuTm90ZVIEbm90ZQ==');

@$core.Deprecated('Use deleteNoteResponseDescriptor instead')
const DeleteNoteResponse$json = {
  '1': 'DeleteNoteResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `DeleteNoteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteNoteResponseDescriptor = $convert.base64Decode(
    'ChJEZWxldGVOb3RlUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use allNotesResponseDescriptor instead')
const AllNotesResponse$json = {
  '1': 'AllNotesResponse',
  '2': [
    {'1': 'note', '3': 1, '4': 3, '5': 11, '6': '.note.Note', '10': 'note'},
  ],
};

/// Descriptor for `AllNotesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allNotesResponseDescriptor = $convert.base64Decode(
    'ChBBbGxOb3Rlc1Jlc3BvbnNlEh4KBG5vdGUYASADKAsyCi5ub3RlLk5vdGVSBG5vdGU=');

@$core.Deprecated('Use idResponseDescriptor instead')
const IdResponse$json = {
  '1': 'IdResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `IdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List idResponseDescriptor = $convert.base64Decode(
    'CgpJZFJlc3BvbnNlEg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use dayRequestDescriptor instead')
const DayRequest$json = {
  '1': 'DayRequest',
  '2': [
    {'1': 'day', '3': 1, '4': 1, '5': 9, '10': 'day'},
  ],
};

/// Descriptor for `DayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dayRequestDescriptor = $convert.base64Decode(
    'CgpEYXlSZXF1ZXN0EhAKA2RheRgBIAEoCVIDZGF5');

