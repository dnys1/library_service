// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library library_service.library_service.model.create_book_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:library_service/src/library_service/model/author.dart' as _i3;
import 'package:meta/meta.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'create_book_input.g.dart';

abstract class CreateBookInput
    with
        _i1.HttpInput<CreateBookInputPayload>,
        _i2.AWSEquatable<CreateBookInput>
    implements
        Built<CreateBookInput, CreateBookInputBuilder>,
        _i1.HasPayload<CreateBookInputPayload> {
  factory CreateBookInput({
    required _i3.Author author,
    DateTime? datePublished,
    required String id,
    String? isbn,
    required String title,
  }) {
    return _$CreateBookInput._(
      author: author,
      datePublished: datePublished,
      id: id,
      isbn: isbn,
      title: title,
    );
  }

  factory CreateBookInput.build(
      [void Function(CreateBookInputBuilder) updates]) = _$CreateBookInput;

  const CreateBookInput._();

  factory CreateBookInput.fromRequest(
    CreateBookInputPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      CreateBookInput.build((b) {
        b.author.replace(payload.author);
        b.datePublished = payload.datePublished;
        b.isbn = payload.isbn;
        b.title = payload.title;
        if (labels['id'] != null) {
          b.id = labels['id']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    CreateBookInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateBookInputBuilder b) {}
  _i3.Author get author;
  DateTime? get datePublished;
  String get id;
  String? get isbn;
  String get title;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'id':
        return id;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  CreateBookInputPayload getPayload() => CreateBookInputPayload((b) {
        b.author.replace(author);
        b.datePublished = datePublished;
        b.isbn = isbn;
        b.title = title;
      });
  @override
  List<Object?> get props => [
        author,
        datePublished,
        id,
        isbn,
        title,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateBookInput');
    helper.add(
      'author',
      author,
    );
    helper.add(
      'datePublished',
      datePublished,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'isbn',
      isbn,
    );
    helper.add(
      'title',
      title,
    );
    return helper.toString();
  }
}

@_i4.internal
abstract class CreateBookInputPayload
    with _i2.AWSEquatable<CreateBookInputPayload>
    implements Built<CreateBookInputPayload, CreateBookInputPayloadBuilder> {
  factory CreateBookInputPayload(
          [void Function(CreateBookInputPayloadBuilder) updates]) =
      _$CreateBookInputPayload;

  const CreateBookInputPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateBookInputPayloadBuilder b) {}
  _i3.Author get author;
  DateTime? get datePublished;
  String? get isbn;
  String get title;
  @override
  List<Object?> get props => [
        author,
        datePublished,
        isbn,
        title,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateBookInputPayload');
    helper.add(
      'author',
      author,
    );
    helper.add(
      'datePublished',
      datePublished,
    );
    helper.add(
      'isbn',
      isbn,
    );
    helper.add(
      'title',
      title,
    );
    return helper.toString();
  }
}

class CreateBookInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<CreateBookInputPayload> {
  const CreateBookInputRestJson1Serializer() : super('CreateBookInput');

  @override
  Iterable<Type> get types => const [
        CreateBookInput,
        _$CreateBookInput,
        CreateBookInputPayload,
        _$CreateBookInputPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  CreateBookInputPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBookInputPayloadBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'author':
          result.author.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Author),
          ) as _i3.Author));
          break;
        case 'datePublished':
          if (value != null) {
            result.datePublished = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'isbn':
          if (value != null) {
            result.isbn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'title':
          result.title = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = object is CreateBookInput
        ? object.getPayload()
        : (object as CreateBookInputPayload);
    final result = <Object?>[
      'author',
      serializers.serialize(
        payload.author,
        specifiedType: const FullType(_i3.Author),
      ),
      'title',
      serializers.serialize(
        payload.title,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.datePublished != null) {
      result
        ..add('datePublished')
        ..add(serializers.serialize(
          payload.datePublished!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.isbn != null) {
      result
        ..add('isbn')
        ..add(serializers.serialize(
          payload.isbn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
