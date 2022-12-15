// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library library_service.library_service.model.author; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'author.g.dart';

abstract class Author
    with _i1.AWSEquatable<Author>
    implements Built<Author, AuthorBuilder> {
  factory Author({
    String? id,
    String? name,
  }) {
    return _$Author._(
      id: id,
      name: name,
    );
  }

  factory Author.build([void Function(AuthorBuilder) updates]) = _$Author;

  const Author._();

  static const List<_i2.SmithySerializer> serializers = [
    AuthorRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AuthorBuilder b) {}
  String? get id;
  String? get name;
  @override
  List<Object?> get props => [
        id,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Author');
    helper.add(
      'id',
      id,
    );
    helper.add(
      'name',
      name,
    );
    return helper.toString();
  }
}

class AuthorRestJson1Serializer extends _i2.StructuredSmithySerializer<Author> {
  const AuthorRestJson1Serializer() : super('Author');

  @override
  Iterable<Type> get types => const [
        Author,
        _$Author,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  Author deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'id':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as Author);
    final result = <Object?>[];
    if (payload.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
